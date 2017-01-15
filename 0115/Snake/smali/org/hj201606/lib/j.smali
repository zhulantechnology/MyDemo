.class Lorg/hj201606/lib/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/hj201606/lib/PayActivity;


# direct methods
.method constructor <init>(Lorg/hj201606/lib/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/hj201606/lib/j;->a:Lorg/hj201606/lib/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/hj201606/lib/j;->a:Lorg/hj201606/lib/PayActivity;

    sget v1, Lorg/hj201606/lib/sms/HuafeiConfigs;->Err_Cancel:I

    invoke-static {v0, v1}, Lorg/hj201606/lib/PayActivity;->a(Lorg/hj201606/lib/PayActivity;I)V

    return-void
.end method
