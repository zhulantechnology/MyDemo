.class public Lcom/zp/mm/api/impl/MultiCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zp/mm/api/Command;


# instance fields
.field private final commands:[Lcom/zp/mm/api/Command;


# direct methods
.method public varargs constructor <init>([Lcom/zp/mm/api/Command;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zp/mm/api/impl/MultiCommand;->commands:[Lcom/zp/mm/api/Command;

    return-void
.end method


# virtual methods
.method public executeCommand()V
    .locals 4

    iget-object v0, p0, Lcom/zp/mm/api/impl/MultiCommand;->commands:[Lcom/zp/mm/api/Command;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zp/mm/api/impl/MultiCommand;->commands:[Lcom/zp/mm/api/Command;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/zp/mm/api/Command;->executeCommand()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
