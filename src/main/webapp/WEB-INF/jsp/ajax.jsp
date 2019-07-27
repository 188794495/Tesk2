<script type="text/javascript">
    $(document).ready(function () {
        $("input").click(function () {
            $.ajax({
                // 请求路径
                url: "/person/error",
                // 请求方式
                type: "get",
                // 请求参数类型
                dateType: "json",
                <!--data:要求为Object或String类型的参数，发送到服务器的数据。如果已经不是字符串，将自动转换为字符串格式
               ,对象必须为key/value格式-->
                success: function (data) {
                    for (var i = 0; i < data.lenth; i++) {
                        alert(data)
                    }
                }
            })
        })
    })
</script>