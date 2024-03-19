package com.mii.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mii.model.Booking;
//import com.safetyequipment.beans.Order;
import com.mii.model.Payment;
import com.mii.model.User;
import com.mii.service.BookingService;
//import com.safetyequipment.service.OrderService;
import com.mii.service.PaymentService;
//import com.safetyequipment.service.ProductService;
//import com.safetyequipment.service.ShippingService;
import com.mii.serviceimpl.BookingServiceImpl;
//import com.safetyequipment.service.impl.OrderServiceImpl;
import com.mii.serviceimpl.PaymentServiceImpl;
//import com.safetyequipment.service.impl.ProductServiceImpl;
//import com.safetyequipment.service.impl.ShippingServiceImpl;

/**
 * Servlet implementation class PaymentServlet
 */
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PaymentService paymentService = (PaymentService) new PaymentServiceImpl();
	BookingService bookingService = new BookingServiceImpl();
	//CartService cartService = new CartServiceImpl();
	//ShippingService shippingService = new ShippingServiceImpl();
	//ProductService productService = new ProductServiceImpl(); 
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		// System.out.println("step 1");
		Payment payment = new Payment();
		// System.out.println("output html in payment Servlet:
		// "+request.getParameter("outputhtml"));
		payment.setBankname(request.getParameter("bankname"));
		payment.setBanktxnid(request.getParameter("banktxnid"));
		payment.setCurrency(request.getParameter("currency"));
		payment.setGatewayname(request.getParameter("gatewayname"));
		payment.setMerchantid(request.getParameter("merchantid"));
		payment.setOrderid(request.getParameter("orderid"));
		payment.setPaymentmode(request.getParameter("paymentmode"));
		payment.setResponsecode(request.getParameter("responsecode"));
		payment.setResponsemsg(request.getParameter("responsemsg"));
		payment.setStatus(request.getParameter("status"));
		payment.setTxnamount(Double.parseDouble(request.getParameter("txnamount")));
		payment.setTxnid(request.getParameter("txnid"));
		// System.out.println("step 2");
		String message = paymentService.registerPayment(payment);}
		// System.out.println("step 3");

		/*if (message.equals("success")) {
			// Order updated successfully
			String shippingstatus = shippingService.updatePaymentStatus(request.getParameter("orderid"));
			System.out.println("shipping status : "+shippingstatus);
			if (shippingstatus.equals("Order updated successfully")) {
				HttpSession httpSession = request.getSession(false);
				User user = (User) httpSession.getAttribute("userlogin");
				Order order = new Order();
				order.setOrderkey(request.getParameter("orderid"));
				order.setUserid(user.getUserid());
				order.setTransaction_amount(Double.parseDouble(request.getParameter("txnamount")));
				// int userid = user.getUserid();
				// System.out.println("step 4");
				int ordersummeryid = orderService.registerOrderDetails(order);
				System.out.println("order summery id : " + ordersummeryid);
				// System.out.println("step 5");
				List<Cart> cartlist = cartService.selectedusercartlist(user.getUserid());
				String updateQuantity = productService.updateProductQuantity(cartlist);
				System.out.println("updated product quantity : "+updateQuantity);
				if (cartlist.size() > 0) {
					// System.out.println("step 6");
					int arr[] = orderService.saveOrderDetails(cartlist, ordersummeryid);
					// System.out.println("step 7");
					if (arr.length > 0) {
						// System.out.println("step 8");
						String deletedCartmsg = cartService.removeAllCartProducts(user.getUserid());
						System.out.println(deletedCartmsg);
					}
				} else {

				}

			}

		}
		response.setContentType("text/plain");
		response.getWriter().write(message);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);

	}

}