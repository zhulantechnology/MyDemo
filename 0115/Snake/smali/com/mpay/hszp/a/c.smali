.class public final Lcom/mpay/hszp/a/c;
.super Ljava/lang/Object;


# static fields
.field private static sdkConfig:Lcom/mpay/hszp/a/c;


# instance fields
.field private billingSdkVersion:Ljava/lang/String;

.field private phoneinfoUrl:Ljava/lang/String;

.field private rsaPrivateKey:Ljava/lang/String;

.field private rsaPublicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mpay/hszp/a/c;->sdkConfig:Lcom/mpay/hszp/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/mpay/hszp/a/c;->billingSdkVersion:Ljava/lang/String;

    const-string v0, "http://pay.sdk.new.5isy.com/center/thirdpart/InfoHandler.ashx"

    iput-object v0, p0, Lcom/mpay/hszp/a/c;->phoneinfoUrl:Ljava/lang/String;

    const-string v0, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAK6JKYmq0CYet69WgpcQGrz3k2/k9Cq9KL8/yn+0l7rxt13nA970v/an5469U4JgLN2NgH+lyzq8swwjSQ7+VKrSjfM84NLc+bFq6DqTEF9MwVpU5M0uDYC/ep5W5jVp5lKF/0leOOitZbCzY7uz6+AqscbjAKkl559gkhs6T48TAgMBAAECgYB3j2Iy+h4IXvZ5WAuxK8kFNZt8BRz1wgqNqEcxYCaoWzi/TKcsLgDqGG7ZKvxvzS4uvuYNiydCn00PvYQojzSzha7xpw7HxqcxCBMrznbopZlOuTJvzBAACx+FXFQLQRgs/uy2t6a/WsPN8PSN74WEhPZIM7pWZqPAGD8dsl5PoQJBAOJGDaJeLBckljVx4rYws+RZ7zxc99fOkuwdMQwSimCZx9yV0IJQVom2+DFAPl3TinXXELyjSD4j4kZm95XxDjkCQQDFdxTo9d4oLjlVKoDF+BeLMyYm4ebLaCf7oDWyDbtFIYjDJ2g0xsjZqOZ8z1F5P03hUQRCnGlIPFDWhUsSI4erAkBXAlsh0Zagu5frK0TjjCzQpWiiTJmdabkDhGIk40hExz2cbBuG0L/GKw6bWbnhuIOotq+f6iXQh1nueo/AH7a5AkBfuudsOSZGnII3A7ACSdBAL7/jQck9+3TGzFi7xWRwk11WHxip3WUqAHQdNfTtrv72qOxDzshLuNIH7f8DAC6ZAkA+bkxB3SuzpfkJhw84NZhNKM2JRpWwhptZN2wokOSdeDfIcPTYYcw5J+G9x81KuVZQtCViqhFjjeQqp+PKm5wD"

    iput-object v0, p0, Lcom/mpay/hszp/a/c;->rsaPrivateKey:Ljava/lang/String;

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQChQcCWqjrNmwu47DQXBZXYUd2gDUfR7hAgYHmxcIAjx2LULSQ7dzqaFRuCdxJs7M8gp4FNDJBq2KCaiSp9MLgyJNPddtE2EzFdgFjCFqg0gUZD6RVkmqtmnyKLiGNWC9rXlHVF5fnz4LHBJDlgk4d4r8+nhJ/I6Fl+I6Ij/7kaMwIDAQAB"

    iput-object v0, p0, Lcom/mpay/hszp/a/c;->rsaPublicKey:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/mpay/hszp/a/c;
    .locals 1

    sget-object v0, Lcom/mpay/hszp/a/c;->sdkConfig:Lcom/mpay/hszp/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mpay/hszp/a/c;

    invoke-direct {v0}, Lcom/mpay/hszp/a/c;-><init>()V

    sput-object v0, Lcom/mpay/hszp/a/c;->sdkConfig:Lcom/mpay/hszp/a/c;

    :cond_0
    sget-object v0, Lcom/mpay/hszp/a/c;->sdkConfig:Lcom/mpay/hszp/a/c;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/c;->billingSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/c;->phoneinfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/c;->rsaPublicKey:Ljava/lang/String;

    return-object v0
.end method
