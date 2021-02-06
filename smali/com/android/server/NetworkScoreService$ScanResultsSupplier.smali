.class Lcom/android/server/NetworkScoreService$ScanResultsSupplier;
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
    name = "ScanResultsSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/List<",
        "Landroid/net/wifi/ScanResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;->mContext:Landroid/content/Context;

    .line 603
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    .line 608
    .local v0, "wifiScanner":Landroid/net/wifi/WifiScanner;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner;->getSingleScanResults()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 611
    :cond_0
    const-string v1, "NetworkScoreService"

    const-string v2, "WifiScanner is null, failed to return scan results."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
