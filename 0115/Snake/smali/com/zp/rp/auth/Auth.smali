.class public Lcom/zp/rp/auth/Auth;
.super Ljava/lang/Object;


# instance fields
.field private final password:Ljava/lang/String;

.field private final result:Lcom/zp/rp/auth/AuthResult;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zp/rp/auth/AuthResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zp/rp/auth/Auth;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/zp/rp/auth/Auth;->password:Ljava/lang/String;

    iput-object p3, p0, Lcom/zp/rp/auth/Auth;->result:Lcom/zp/rp/auth/AuthResult;

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/auth/Auth;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/zp/rp/auth/AuthResult;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/auth/Auth;->result:Lcom/zp/rp/auth/AuthResult;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zp/rp/auth/Auth;->username:Ljava/lang/String;

    return-object v0
.end method
