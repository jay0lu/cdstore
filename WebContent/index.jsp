
<%
if(session.getAttribute("usersessionID") == null){
	out.println("<script>alert('Session Missing');window.location.href='http://localhost:8080/cdstore/login';</script>");
}
%>

            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p>[ welcome text ]</p>
                </div>
            </div>

            <div id="indexRightColumn">
                <div class="categoryBox">
                    <a href="#" onclick="addToShoppingCart('pop')">
                        <span class="categoryLabelText">pop</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#" onclick="addToShoppingCart('rock')">
                        <span class="categoryLabelText">rock</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#" onclick="addToShoppingCart('classic')">
                        <span class="categoryLabelText">classic</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#" onclick="addToShoppingCart('R&B')">
                        <span class="categoryLabelText">R&B</span>
                    </a>
                </div>
            </div>
            
            <input type="button" value="show shopping cart" onclick="showShoppingCart()">
            
            <script>
            	function addToShoppingCart(item) {
            		document.cookie += item + ",";
            	}
            	
            	function showShoppingCart() {
            		alert(document.cookie);	
            	}
            </script>
            

