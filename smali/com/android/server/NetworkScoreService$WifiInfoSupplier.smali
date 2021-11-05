.class Lcom/android/server/NetworkScoreService$WifiInfoSupplier;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiInfoSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->mContext:Landroid/content/Context;

    .line 582
    return-void
.end method


# virtual methods
.method public get()Landroid/net/wifi/WifiInfo;
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 587
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    return-object v1

    .line 590
    :cond_0
    const-string v1, "NetworkScoreService"

    const-string v2, "WifiManager is null, failed to return the WifiInfo."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->get()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method
