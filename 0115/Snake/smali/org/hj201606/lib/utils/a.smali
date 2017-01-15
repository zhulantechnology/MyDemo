.class Lorg/hj201606/lib/utils/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/utils/HuafeiLBS;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/utils/HuafeiLBS;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v1, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v1, v1, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iget v1, v1, Lorg/hj201606/lib/utils/HuafeiCell;->MCC:I

    iget-object v2, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v2, v2, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iget v2, v2, Lorg/hj201606/lib/utils/HuafeiCell;->MNC:I

    iget-object v3, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v3, v3, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iget v3, v3, Lorg/hj201606/lib/utils/HuafeiCell;->LAC:I

    iget-object v4, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v4, v4, Lorg/hj201606/lib/utils/HuafeiLBS;->a:Lorg/hj201606/lib/utils/HuafeiCell;

    iget v4, v4, Lorg/hj201606/lib/utils/HuafeiCell;->CID:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/hj201606/lib/utils/HuafeiLBS;->a(Lorg/hj201606/lib/utils/HuafeiLBS;IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    const-string v2, "http://smsapi.hejupay.com/getLocation.php"

    invoke-virtual {v1, v2, v0}, Lorg/hj201606/lib/utils/HuafeiLBS;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hj201606/lib/utils/a;->a:Lorg/hj201606/lib/utils/HuafeiLBS;

    iget-object v1, v1, Lorg/hj201606/lib/utils/HuafeiLBS;->c:Lorg/hj201606/lib/utils/HuafeiLocation;

    iput-object v0, v1, Lorg/hj201606/lib/utils/HuafeiLocation;->city:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
