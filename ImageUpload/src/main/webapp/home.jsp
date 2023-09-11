<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
    <title>Image Upload and Display</title>
    <style>
        .tab-content {
            display: none;
        }
    </style>
</head>
<body>
    <h1>Image Upload and Display</h1>
    <ul>
        <li><a href="#" onclick="showTab('upload-tab')">Upload Image</a></li>
        <li><a href="#" onclick="showTab('display-tab')">Display Image</a></li>
    </ul>
    
    <!-- Tab 1: Upload Image -->
    <div class="tab-content" id="upload-tab">
        <form action="UploadImageServlet" method="post" enctype="multipart/form-data">
            <input type="file" name="imageFile" accept="image/*" />
            <input type="submit" value="Upload" />
        </form>
    </div>
    
    <!-- Tab 2: Display Image -->
    <div class="tab-content" id="display-tab">
        <img src="DisplayImageServlet" alt="Uploaded Image" />
    </div>
    
    <script>
        function showTab(tabId) {
            var tabs = document.getElementsByClassName('tab-content');
            for (var i = 0; i < tabs.length; i++) {
                tabs[i].style.display = 'none';
            }
            document.getElementById(tabId).style.display = 'block';
        }
    </script>
</body>
</html>
    