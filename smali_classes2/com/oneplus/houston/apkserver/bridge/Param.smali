.class public final Lcom/oneplus/houston/apkserver/bridge/Param;
.super Ljava/lang/Object;
.source "Param.java"


# instance fields
.field param1:Ljava/lang/String;

.field param2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "p1"    # Ljava/lang/String;
    .param p2, "p2"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Lcom/oneplus/houston/apkserver/bridge/Param;)Z
    .locals 3
    .param p1, "param"    # Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 26
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 27
    return v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_1
    return v0
.end method
