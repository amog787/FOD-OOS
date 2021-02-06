.class public Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.super Ljava/lang/Object;
.source "OneTimePermissionUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_KILLED_DELAY_MILLIS:J = 0x1388L

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PROPERTY_KILLED_DELAY_CONFIG_KEY:Ljava/lang/String; = "one_time_permissions_killed_delay_millis"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private final mUninstallListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mUninstallListener:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 79
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    .line 80
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 81
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 82
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()J
    .locals 2

    .line 40
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->getKilledDelayMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/permission/PermissionControllerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 40
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    return-object v0
.end method

.method private static getKilledDelayMillis()J
    .locals 4

    .line 166
    const-string/jumbo v0, "permissions"

    const-string/jumbo v1, "one_time_permissions_killed_delay_millis"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method registerUninstallListener()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mUninstallListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method startPackageOneTimeSession(Ljava/lang/String;JII)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "importanceToResetTimer"    # I
    .param p5, "importanceToKeepSessionAlive"    # I

    move-object v10, p0

    move-object/from16 v11, p1

    .line 121
    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 125
    .local v12, "uid":I
    nop

    .line 127
    iget-object v13, v10, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 128
    :try_start_1
    iget-object v0, v10, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 129
    .local v0, "listener":Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    if-nez v0, :cond_0

    .line 130
    new-instance v14, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    const/4 v9, 0x0

    move-object v1, v14

    move-object v2, p0

    move v3, v12

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JIILcom/android/server/pm/permission/OneTimePermissionUserManager$1;)V

    move-object v0, v14

    .line 132
    iget-object v1, v10, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    .end local v0    # "listener":Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    :cond_0
    monitor-exit v13

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 122
    .end local v12    # "uid":I
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    return-void
.end method

.method stopPackageOneTimeSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "uid":I
    nop

    .line 152
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 154
    .local v2, "listener":Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    if-eqz v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    invoke-static {v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->access$100(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 158
    .end local v2    # "listener":Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    :cond_0
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 147
    .end local v0    # "uid":I
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    return-void
.end method
