.class Lorg/hj201606/lib/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/HejuInit;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/HejuInit;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/a;->a:Lorg/hj201606/lib/HejuInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lorg/hj201606/lib/HejuInit;->mobile:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/hj201606/lib/HejuInit;->mobile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/hj201606/lib/a;->a:Lorg/hj201606/lib/HejuInit;

    invoke-static {v0}, Lorg/hj201606/lib/HejuInit;->a(Lorg/hj201606/lib/HejuInit;)V

    :cond_1
    return-void
.end method
