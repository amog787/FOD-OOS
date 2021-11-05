.class public Lcom/android/server/adb/AdbDebuggingManager;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;,
        Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;,
        Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;,
        Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
    }
.end annotation


# static fields
.field private static final ADBD_SOCKET:Ljava/lang/String; = "adbd"

.field private static final ADB_DIRECTORY:Ljava/lang/String; = "misc/adb"

.field private static final ADB_KEYS_FILE:Ljava/lang/String; = "adb_keys"

.field private static final ADB_TEMP_KEYS_FILE:Ljava/lang/String; = "adb_temp_keys.xml"

.field private static final BUFFER_SIZE:I = 0x10000

.field private static final DEBUG:Z = false

.field private static final MDNS_DEBUG:Z = false

.field private static final PAIRING_CODE_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AdbDebuggingManager"

.field private static final WIFI_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.adb.tls_server.enable"

.field private static final WIFI_PERSISTENT_GUID:Ljava/lang/String; = "persist.adb.wifi.guid"


# instance fields
.field private mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

.field private mAdbUsbEnabled:Z

.field private mAdbWifiEnabled:Z

.field private mConfirmComponent:Ljava/lang/String;

.field private final mConnectedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

.field private final mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

.field private final mTestUserKeyFile:Ljava/io/File;

.field private mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

.field private final mWifiConnectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 146
    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 149
    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 152
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 155
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 156
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "confirmComponent"    # Ljava/lang/String;
    .param p3, "testUserKeyFile"    # Ljava/io/File;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 146
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 164
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 167
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 171
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/adb/AdbDebuggingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 108
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 108
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->deleteKeyFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 108
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->sendPersistKeyStoreMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 108
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/adb/AdbDebuggingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1541
    .local p2, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1542
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1544
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1546
    :cond_0
    return-object v0
.end method

.method private deleteKeyFile()V
    .locals 1

    .line 1621
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 1622
    .local v0, "keyFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1623
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1625
    :cond_0
    return-void
.end method

.method private getAdbConnectionInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    monitor-enter v0

    .line 590
    :try_start_0
    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    monitor-exit v0

    return-object v1

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1553
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1554
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1556
    .local v1, "adbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1557
    const-string v2, "AdbDebuggingManager"

    const-string v3, "ADB data directory does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v2, 0x0

    return-object v2

    .line 1561
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .line 1420
    const-string v0, "AdbDebuggingManager"

    const-string v1, "0123456789ABCDEF"

    .line 1421
    .local v1, "hex":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    if-nez p1, :cond_0

    .line 1425
    return-object v3

    .line 1429
    :cond_0
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1433
    .local v4, "digester":Ljava/security/MessageDigest;
    nop

    .line 1435
    const-string v5, "\\s+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1438
    .local v5, "base64_data":[B
    :try_start_1
    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1442
    .local v0, "digest":[B
    nop

    .line 1443
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 1444
    aget-byte v6, v0, v3

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1445
    aget-byte v6, v0, v3

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1446
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 1447
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1450
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1439
    .end local v0    # "digest":[B
    :catch_0
    move-exception v6

    .line 1440
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "error doing base64 decoding"

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    return-object v3

    .line 1430
    .end local v4    # "digester":Ljava/security/MessageDigest;
    .end local v5    # "base64_data":[B
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 1431
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "Error getting digester"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1432
    return-object v3
.end method

.method private sendPersistKeyStoreMessage()V
    .locals 2

    .line 1757
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1758
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1759
    return-void
.end method

.method private setAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 579
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    monitor-enter v0

    .line 580
    if-nez p1, :cond_0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->clear()V

    .line 582
    monitor-exit v0

    return-void

    .line 584
    :cond_0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 585
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1509
    .local p3, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1510
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 1511
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1512
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1514
    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    const/4 v2, 0x1

    return v2

    .line 1516
    :catch_0
    move-exception v2

    .line 1517
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to start adb whitelist activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fingerprints"    # Ljava/lang/String;

    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "key"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v2, "fingerprints"

    invoke-direct {v1, v2, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1482
    .local v1, "currentUserId":I
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1484
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1485
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1486
    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10401ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "componentString":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1491
    .end local v3    # "componentString":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10401ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1494
    .restart local v3    # "componentString":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1495
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1496
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1500
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as an Activity or a Service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AdbDebuggingManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return-void

    .line 1498
    :cond_3
    :goto_2
    return-void
.end method

.method private startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    .local v0, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "ssid"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v2, "bssid"

    invoke-direct {v1, v2, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1458
    .local v1, "currentUserId":I
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1460
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    const v4, 0x10401ef

    if-eqz v3, :cond_0

    .line 1461
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "componentString":Ljava/lang/String;
    goto :goto_0

    .line 1464
    .end local v3    # "componentString":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1467
    .restart local v3    # "componentString":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1468
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1469
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1473
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start customAdbWifiNetworkConfirmation[SecondaryUser]Component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as an Activity or a Service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AdbDebuggingManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return-void

    .line 1471
    :cond_2
    :goto_1
    return-void
.end method

.method private startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1528
    .local p3, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 1530
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1531
    const/4 v1, 0x1

    return v1

    .line 1535
    :cond_0
    goto :goto_0

    .line 1533
    :catch_0
    move-exception v1

    .line 1534
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to start adb whitelist service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdbDebuggingManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1536
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private writeKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1574
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 1576
    .local v0, "keyFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1577
    return-void

    .line 1580
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1581
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1582
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 1583
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1585
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    nop

    .end local v0    # "keyFile":Ljava/io/File;
    .end local v1    # "fo":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdbDebuggingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeKeys(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1593
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1594
    .local v0, "atomicKeyFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 1596
    .local v1, "fo":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v2

    .line 1598
    .local v2, "keyFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 1599
    return-void

    .line 1602
    :cond_0
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 1603
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 1604
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1605
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1606
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 1607
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1608
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1610
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    nop

    .end local v2    # "keyFile":Ljava/io/File;
    goto :goto_1

    .line 1612
    :catch_0
    move-exception v2

    .line 1613
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing keys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    if-eqz v0, :cond_2

    .line 1615
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1618
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .locals 2
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 1651
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1652
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1653
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1654
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1655
    return-void
.end method

.method public allowWirelessDebugging(ZLjava/lang/String;)V
    .locals 2
    .param p1, "alwaysAllow"    # Z
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1677
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1678
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1679
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1680
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1681
    return-void
.end method

.method public clearDebuggingKeys()V
    .locals 2

    .line 1669
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1670
    return-void
.end method

.method public denyDebugging()V
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1662
    return-void
.end method

.method public denyWirelessDebugging()V
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1688
    return-void
.end method

.method public disablePairing()V
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1744
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 10
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 1765
    const-string v0, "AdbDebuggingManager"

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1767
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v5, "connected_to_adb"

    const-wide v6, 0x10800000001L

    invoke-virtual {p1, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1768
    const-wide v5, 0x10900000002L

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    const-string/jumbo v7, "last_key_received"

    invoke-static {p1, v7, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 1772
    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v5, "user_keys"

    const-wide v6, 0x10900000003L

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/misc/adb/adb_keys"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1773
    invoke-static {v8, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1772
    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    goto :goto_1

    .line 1774
    :catch_0
    move-exception v5

    .line 1775
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Cannot read user keys"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    const-string/jumbo v5, "system_keys"

    const-wide v6, 0x10900000004L

    new-instance v8, Ljava/io/File;

    const-string v9, "/adb_keys"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1780
    invoke-static {v8, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1779
    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1783
    goto :goto_2

    .line 1781
    :catch_1
    move-exception v5

    .line 1782
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v6, "Cannot read system keys"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1786
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "keystore"

    const-wide v6, 0x10900000005L

    .line 1787
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1786
    invoke-virtual {p1, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1790
    goto :goto_3

    .line 1788
    :catch_2
    move-exception v3

    .line 1789
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Cannot read keystore: "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1792
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1793
    return-void
.end method

.method public enablePairingByPairingCode()V
    .locals 2

    .line 1723
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1724
    return-void
.end method

.method public enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 1730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1731
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "serviceName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1736
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1737
    return-void
.end method

.method getAdbTempKeysFile()Ljava/io/File;
    .locals 1

    .line 1565
    const-string v0, "adb_temp_keys.xml"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAdbWirelessPort()I
    .locals 2

    .line 1694
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbConnectionInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v0

    .line 1695
    .local v0, "info":Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    if-nez v0, :cond_0

    .line 1696
    const/4 v1, 0x0

    return v1

    .line 1698
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getPort()I

    move-result v1

    return v1
.end method

.method public getPairedDevices()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/debug/PairDevice;",
            ">;"
        }
    .end annotation

    .line 1705
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1706
    .local v0, "keystore":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method getUserKeyFile()Ljava/io/File;
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTestUserKeyFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isAdbWifiEnabled()Z
    .locals 1

    .line 1750
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return v0
.end method

.method public setAdbEnabled(ZB)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "transportType"    # B

    .line 1634
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1635
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1636
    :cond_0
    const/4 v0, 0x2

    .line 1635
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1637
    :cond_1
    if-ne p2, v0, :cond_3

    .line 1638
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_1

    .line 1639
    :cond_2
    const/16 v1, 0xc

    .line 1638
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1644
    :goto_2
    return-void

    .line 1641
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdbEnabled called with unimplemented transport type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpairDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "fingerprint"    # Ljava/lang/String;

    .line 1713
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1716
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1717
    return-void
.end method
