.class Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
.super Landroid/util/Pools$SimplePool;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpEventProxyInfoPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pools$SimplePool<",
        "Landroid/app/AppOpsManager$OpEventProxyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 392
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 393
    return-void
.end method


# virtual methods
.method acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 398
    .local v0, "recycled":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;)V

    .line 400
    return-object v0

    .line 403
    :cond_0
    new-instance v1, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
