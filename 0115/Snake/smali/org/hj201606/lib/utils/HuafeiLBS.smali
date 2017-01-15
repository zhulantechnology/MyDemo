.class public Lorg/hj201606/lib/utils/HuafeiLBS;
.super Ljava/lang/Object;


# static fields
.field private static d:Landroid/content/Context;


# instance fields
.field a:Lorg/hj201606/lib/utils/HuafeiCell;

.field b:Lorg/hj201606/lib/utils/HuafeiItude;

.field c:Lorg/hj201606/lib/utils/HuafeiLocation;

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->e:D

    iput-wide v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->f:D

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiCell;

    invoke-direct {v0}, Lorg/hj201606/lib/utils/HuafeiCell;-><init>()V

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiItude;

    invoke-direct {v0}, Lorg/hj201606/lib/utils/HuafeiItude;-><init>()V

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->b:Lorg/hj201606/lib/utils/HuafeiItude;

    new-instance v0, Lorg/hj201606/lib/utils/HuafeiLocation;

    invoke-direct {v0}, Lorg/hj201606/lib/utils/HuafeiLocation;-><init>()V

    iput-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->c:Lorg/hj201606/lib/utils/HuafeiLocation;

    sput-object p1, Lorg/hj201606/lib/utils/HuafeiLBS;->d:Landroid/content/Context;

    return-void
.end method

.method private a(IIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "mcn"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mcc"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lac"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cid"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/hj201606/lib/utils/HuafeiLBS;IIII)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hj201606/lib/utils/HuafeiLBS;->a(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCellInfo()Lorg/hj201606/lib/utils/HuafeiCell;
    .locals 5

    const/4 v3, 0x3

    sget-object v0, Lorg/hj201606/lib/utils/HuafeiLBS;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iget-object v4, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iput v2, v4, Lorg/hj201606/lib/utils/HuafeiCell;->MCC:I

    iget-object v2, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iput v1, v2, Lorg/hj201606/lib/utils/HuafeiCell;->MNC:I

    iget-object v1, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iput v3, v1, Lorg/hj201606/lib/utils/HuafeiCell;->LAC:I

    iget-object v1, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iput v0, v1, Lorg/hj201606/lib/utils/HuafeiCell;->CID:I

    iget-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    return-object v0
.end method

.method public getItude()Lorg/hj201606/lib/utils/HuafeiItude;
    .locals 4

    sget-object v0, Lorg/hj201606/lib/utils/HuafeiLBS;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->e:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->f:D

    iget-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->b:Lorg/hj201606/lib/utils/HuafeiItude;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/hj201606/lib/utils/HuafeiItude;->done:Z

    :cond_0
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->e:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->b:Lorg/hj201606/lib/utils/HuafeiItude;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->e:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/hj201606/lib/utils/HuafeiItude;->latitude:Ljava/lang/String;

    iget-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->b:Lorg/hj201606/lib/utils/HuafeiItude;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/hj201606/lib/utils/HuafeiItude;->longitude:Ljava/lang/String;

    iget-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->b:Lorg/hj201606/lib/utils/HuafeiItude;

    return-object v0
.end method

.method public getLocation()Lorg/hj201606/lib/utils/HuafeiLocation;
    .locals 1

    new-instance v0, Lorg/hj201606/lib/utils/a;

    invoke-direct {v0, p0}, Lorg/hj201606/lib/utils/a;-><init>(Lorg/hj201606/lib/utils/HuafeiLBS;)V

    invoke-virtual {v0}, Lorg/hj201606/lib/utils/a;->start()V

    iget-object v0, p0, Lorg/hj201606/lib/utils/HuafeiLBS;->c:Lorg/hj201606/lib/utils/HuafeiLocation;

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x1770

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "application/json, text/javascript, */*; q=0.01"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Charset"

    const-string v3, "GBK,utf-8;q=0.7,*;q=0.3"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip,deflate,sdch"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v3, "zh-CN,zh;q=0.8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4X-Requested-With:XMLHttpRequest"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-Requested-With"

    const-string v3, "XMLHttpRequest"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hj201606/lib/utils/HuafeiLBS;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
