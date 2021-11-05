.class Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbConnectionInfo"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mPort:I

.field private mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 538
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 540
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 542
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p2, "other"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 549
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iget-object v0, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 551
    iget-object v0, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 552
    iget v0, p2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 553
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "ssid"    # Ljava/lang/String;

    .line 544
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 546
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 547
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 572
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 573
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 575
    return-void
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 564
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 568
    iput p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 569
    return-void
.end method
