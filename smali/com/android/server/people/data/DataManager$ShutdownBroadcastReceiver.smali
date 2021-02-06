.class Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Lcom/android/server/people/data/DataManager$1;

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$DataManager$ShutdownBroadcastReceiver(Lcom/android/server/people/data/UserData;)V
    .locals 2
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 976
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$2000(Lcom/android/server/people/data/DataManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 980
    .local v0, "listener":Lcom/android/server/people/data/DataManager$NotificationListener;
    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$NotificationListener;->cleanupCachedShortcuts()V

    .line 983
    :cond_0
    sget-object v1, Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 984
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 975
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;-><init>(Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;)V

    invoke-static {v0, v1}, Lcom/android/server/people/data/DataManager;->access$1500(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 985
    return-void
.end method
