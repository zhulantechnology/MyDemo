.class Lorg/hj201606/lib/sms/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/sms/SentIntent;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/sms/SentIntent;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tradeId"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->a(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "spnumber"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->b(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "amount"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->c(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "msg"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->d(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "did"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->e(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "iccid"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->f(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "apikey"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->g(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "model"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->h(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "op"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->i(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "os"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->j(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "net"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->k(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "vcode"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->l(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "packageName"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->m(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "resultCode"

    iget-object v3, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v3}, Lorg/hj201606/lib/sms/SentIntent;->n(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "syncNum"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v4}, Lorg/hj201606/lib/sms/SentIntent;->o(Lorg/hj201606/lib/sms/SentIntent;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/hj201606/lib/sms/SentIntent;->a(Lorg/hj201606/lib/sms/SentIntent;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/hj201606/lib/sms/HuafeiConfigs;->verifySendUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/hj201606/lib/sms/d;->a:Lorg/hj201606/lib/sms/SentIntent;

    invoke-static {v2}, Lorg/hj201606/lib/sms/SentIntent;->p(Lorg/hj201606/lib/sms/SentIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    sget v4, Lorg/hj201606/lib/sms/HuafeiConfigs;->httpGetTimeOut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    sget v4, Lorg/hj201606/lib/sms/HuafeiConfigs;->httpGetTimeOut:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
