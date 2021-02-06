.class Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;
.super Landroid/os/AsyncTask;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferredAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2805
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2805
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 2808
    const/4 v0, 0x0

    .line 2809
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2810
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 2812
    .local v2, "trimLevel":I
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 2815
    nop

    .line 2816
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 2818
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/BoostFramework;->perfUXEngine_trigger(I)Ljava/lang/String;

    move-result-object v0

    .line 2819
    if-nez v0, :cond_0

    .line 2820
    return-object v3

    .line 2821
    :cond_0
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2822
    .local v4, "p_apps":[Ljava/lang/String;
    array-length v5, v4

    if-eqz v5, :cond_1

    .line 2823
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2824
    .local v5, "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2825
    .local v6, "bParams":Landroid/os/Bundle;
    nop

    .line 2827
    const-string v7, "start_empty_apps"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2828
    sget-object v7, Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v7, v8, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2830
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2833
    .end local v4    # "p_apps":[Ljava/lang/String;
    .end local v5    # "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "bParams":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_1
    return-object v3

    .line 2813
    :catch_0
    move-exception v4

    .line 2814
    .local v4, "e":Landroid/os/RemoteException;
    return-object v3
.end method
