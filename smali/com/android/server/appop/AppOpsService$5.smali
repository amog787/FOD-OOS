.class Lcom/android/server/appop/AppOpsService$5;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1730
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1733
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->access$1500(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;

    move-result-object v0

    .line 1734
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/android/server/appop/AppOpsService;->access$1600(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    .line 1735
    return-void
.end method
