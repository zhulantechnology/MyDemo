.class Lorg/hj201606/lib/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/PayActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/i;->a:Lorg/hj201606/lib/PayActivity;

    iput-object p2, p0, Lorg/hj201606/lib/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/hj201606/lib/i;->b:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/i;->a:Lorg/hj201606/lib/PayActivity;

    invoke-static {v0}, Lorg/hj201606/lib/PayActivity;->c(Lorg/hj201606/lib/PayActivity;)V

    :cond_0
    iget-object v0, p0, Lorg/hj201606/lib/i;->b:Ljava/lang/String;

    const-string v1, "verifycode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/hj201606/lib/i;->a:Lorg/hj201606/lib/PayActivity;

    invoke-static {v0}, Lorg/hj201606/lib/PayActivity;->d(Lorg/hj201606/lib/PayActivity;)V

    :cond_1
    iget-object v0, p0, Lorg/hj201606/lib/i;->b:Ljava/lang/String;

    const-string v1, "migu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/hj201606/lib/i;->a:Lorg/hj201606/lib/PayActivity;

    invoke-static {v0}, Lorg/hj201606/lib/PayActivity;->e(Lorg/hj201606/lib/PayActivity;)V

    :cond_2
    return-void
.end method
