.class Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserBroadcastReceiver"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 936
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 937
    iput p2, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    .line 938
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/people/data/DataManager$1;

    .line 932
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 942
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    iget v1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/people/data/DataManager;->access$1200(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 943
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_0

    .line 944
    return-void

    .line 946
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    const-string v1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "defaultDialer":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    .end local v1    # "defaultDialer":Ljava/lang/String;
    goto :goto_0

    .line 950
    :cond_1
    nop

    .line 951
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 950
    const-string v2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1, v0}, Lcom/android/server/people/data/DataManager;->access$1900(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V

    goto :goto_1

    .line 950
    :cond_2
    :goto_0
    nop

    .line 954
    :goto_1
    return-void
.end method
