.class final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;,
        Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;,
        Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
    }
.end annotation


# static fields
.field private static final CMDTIMEOUT:I = 0x2710

.field private static final ISAGINGVERSION:Z

.field private static final LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field private static final USER_OPERATION_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private mActivityType:I

.field private mAgent:Ljava/lang/String;

.field private mAttachAgentDuringBind:Z

.field private mAutoStop:Z

.field private mBroadcastOptions:Landroid/app/BroadcastOptions;

.field private mDisplayId:I

.field final mDumping:Z

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field private mIsLockTask:Z

.field private mIsTaskOverlay:Z

.field final mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mStreaming:Z

.field private mTaskId:I

.field final mTaskInterface:Landroid/app/IActivityTaskManager;

.field private mUserId:I

.field private mWaitOption:Z

.field private mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 132
    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 170
    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerShellCommand;->ISAGINGVERSION:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "dumping"    # Z

    .line 174
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 145
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 148
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 175
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 176
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    .line 177
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 178
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 179
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 180
    return-void
.end method

.method static synthetic access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 124
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Landroid/app/BroadcastOptions;

    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    return-object p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 124
    sget-boolean v0, Lcom/android/server/am/ActivityManagerShellCommand;->ISAGINGVERSION:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 124
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 124
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return p1
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 7
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "surfaceSize"    # [I
    .param p4, "contextAttribs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2100
    .local p5, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2101
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 2103
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 2104
    return-void

    .line 2108
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 2109
    .local v1, "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_1

    .line 2110
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2111
    return-void

    .line 2115
    :cond_1
    invoke-interface {p0, p1, v1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2118
    const/16 v2, 0x1f03

    invoke-static {v2}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 2119
    .local v2, "extensionList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2122
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 2123
    .local v6, "extension":Ljava/lang/String;
    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2122
    .end local v6    # "extension":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2128
    :cond_2
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2129
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 2130
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2131
    return-void
.end method

.method private static argToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;

    .line 1891
    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1892
    const/4 v0, 0x0

    return-object v0

    .line 1894
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private bucketNameToBucketValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2421
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2422
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2423
    const/16 v1, 0xa

    return v1

    .line 2424
    :cond_0
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2425
    const/16 v1, 0x14

    return v1

    .line 2426
    :cond_1
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2427
    const/16 v1, 0x1e

    return v1

    .line 2428
    :cond_2
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2429
    const/16 v1, 0x28

    return v1

    .line 2430
    :cond_3
    const-string/jumbo v1, "re"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2431
    const/16 v1, 0x2d

    return v1

    .line 2432
    :cond_4
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2433
    const/16 v1, 0x32

    return v1

    .line 2436
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    .local v1, "bucket":I
    return v1

    .line 2438
    .end local v1    # "bucket":I
    :catch_0
    move-exception v1

    .line 2439
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2442
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;Z)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "dumping"    # Z

    .line 3074
    if-eqz p1, :cond_0

    .line 3075
    const-string v0, "Activity manager dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v0, "  WHAT may be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v0, "    a[ctivities]: activity stack state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v0, "    r[recents]: recent activities state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v0, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v0, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string v0, "    p[rocesses] [PACKAGE_NAME]: process state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v0, "    o[om]: out of memory management"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v0, "    perm[issions]: URI permission grant state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v0, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    const-string v0, "    provider [COMP_SPEC]: provider client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    const-string v0, "    s[ervices] [COMP_SPEC ...]: service state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    const-string v0, "    allowed-associations: current package association restrictions"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    const-string v0, "    as[sociations]: tracked app associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const-string v0, "    exit-info [PACKAGE_NAME]: historical process exit information"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    const-string v0, "    lmk: stats on low memory killer"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    const-string v0, "    lru: raw LRU process list"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const-string v0, "    binder-proxies: stats on binder objects and IPCs"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    const-string v0, "    settings: currently applied config settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const-string v0, "    service [COMP_SPEC]: service client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const-string v0, "    package [PACKAGE_NAME]: all state related to given package"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string v0, "    all: dump all activities"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    const-string v0, "    top: dump the top activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    const-string v0, "  WHAT may also be a COMP_SPEC to dump activities."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    const-string v0, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    const-string v0, "    a partial substring in a component name, a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    const-string v0, "    hex object identifier."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    const-string v0, "  -c: include client state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    const-string v0, "  -p: limit output to given package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    const-string v0, "  --checkin: output checkin format, resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string v0, "  --C: output checkin format, not resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    const-string v0, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    const-string v0, "  --autofill: dump just the autofill-related state of an activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3112
    :cond_0
    const-string v0, "Activity manager (activity) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string v0, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string v0, "          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    const-string v0, "          [--track-allocation] [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string v0, "      Start an Activity.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string v0, "      -D: enable debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string v0, "      -N: enable native debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string v0, "      -W: wait for launch to complete"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string v0, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string v0, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string v1, "          between samples (use with --start-profiler)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    const-string v1, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string v1, "          (use with --start-profiler)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3127
    const-string v1, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const-string v1, "      --attach-agent <agent>: attach the given agent before binding"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    const-string v1, "      --attach-agent-bind <agent>: attach the given agent during binding"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string v1, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const-string v1, "          the top activity will be finished."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    const-string v1, "      -S: force stop the target app before starting the activity"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    const-string v1, "      --track-allocation: enable tracking of object allocations"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    const-string v1, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    const-string v2, "          specified then run as the current user."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const-string v3, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    const-string v3, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3138
    const-string v3, "      --display <DISPLAY_ID>: The display to launch the activity into."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    const-string v3, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    const-string v3, "      Start a Service.  Options are:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    const-string v3, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string v3, "      Start a foreground Service.  Options are:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    const-string v3, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string v3, "      Stop a Service.  Options are:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    const-string v1, "  broadcast [--user <USER_ID> | all | current] <INTENT>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    const-string v1, "      Send a broadcast Intent.  Options are:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    const-string v1, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    const-string v1, "          specified then send to all users."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string v1, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string v1, "      --allow-background-activity-starts: The receiver may start activities"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    const-string v1, "          even if in the background."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    const-string v1, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    const-string v1, "          [--user <USER_ID> | current]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string v1, "          [--no-hidden-api-checks [--no-test-api-access]]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    const-string v1, "          [--no-isolated-storage]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    const-string v1, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    const-string v1, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string v1, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    const-string v1, "      is only one instrumentation.  Options are:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string v1, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    const-string v1, "          [-e perf true] to generate raw output for performance measurements."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    const-string v1, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    const-string v1, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const-string v1, "      -p <FILE>: write profiling data to <FILE>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    const-string v1, "      -m: Write output as protobuf to stdout (machine readable)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    const-string v1, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    const-string v1, "          readable). If path is not specified, default directory and file name will"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    const-string v1, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    const-string v1, "      -w: wait for instrumentation to finish before returning.  Required for"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    const-string v1, "          test runners."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    const-string v1, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    const-string v1, "          current user if not specified."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    const-string v1, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    const-string v1, "      --no-test-api-access: do not allow access to test APIs, if hidden"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const-string v1, "          API checks are enabled."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    const-string v1, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    const-string v1, "          mount full external storage"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    const-string v1, "      --no-window-animation: turn off window animations while running."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    const-string v1, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    const-string v1, "          This assumes that the process supports the selected ABI."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    const-string v1, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    const-string v1, "      Trace IPC transactions."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3189
    const-string v1, "      start: start tracing IPC transactions."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3190
    const-string v1, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    const-string v1, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    const-string v1, "  profile start [--user <USER_ID> current]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    const-string v1, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    const-string v1, "      Start profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    const-string v1, "        may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    const-string v2, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    const-string v3, "          specify user of process to profile; uses current user if not"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3198
    const-string v4, "          specified."

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    const-string v0, "          between samples."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3201
    const-string v0, "      --streaming: stream the profiling output to the specified file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    const-string v0, "  profile stop [--user <USER_ID> current] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    const-string v0, "      Stop profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3208
    const-string v0, "  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    const-string v0, "      Dump the heap of a process.  The given <PROCESS> argument may"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    const-string v0, "        be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    const-string v0, "      -n: dump native heap instead of managed heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3212
    const-string v0, "      -g: force GC before dumping the heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    const-string v0, "          specify user of process to dump; uses current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    const-string v0, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    const-string v0, "      Set application <PACKAGE> to debug.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    const-string v0, "      -w: wait for debugger when application starts"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3218
    const-string v0, "      --persistent: retain this value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    const-string v0, "  clear-debug-app"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    const-string v0, "      Clear the previously set-debug-app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    const-string v0, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string v0, "      Start monitoring pss size of <PROCESS>, if it is at or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    const-string v0, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    const-string v0, "  clear-watch-heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    const-string v0, "      Clear the previously set-watch-heap."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    const-string v0, "  clear-exit-info [--user <USER_ID> | all | current] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    const-string v0, "      Clear the process exit-info for given package"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    const-string v0, "  bug-report [--progress | --telephony]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    const-string v0, "      Request bug report generation; will launch a notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    const-string v0, "        when done to select where it should be delivered. Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    const-string v0, "     --progress: will launch a notification right away to show its progress."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    const-string v0, "     --telephony: will dump only telephony sections."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    const-string v0, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    const-string v0, "      Completely stop the given application package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    const-string v0, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    const-string v0, "      Induce a VM crash in the specified package or process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    const-string v0, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    const-string v0, "      Kill all background processes associated with the given application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    const-string v0, "  kill-all"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    const-string v0, "      Kill all processes that are safe to kill (cached, etc)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    const-string v0, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    const-string v0, "      If the given application\'s uid is in the background and waiting to"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    const-string v0, "      become idle (not allowing background services), do that now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    const-string v0, "  monitor [--gdb <port>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    const-string v0, "      Start monitoring for crashes or ANRs."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3246
    const-string v0, "      --gdb: start gdbserv on the given port at crash/ANR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    const-string v0, "  watch-uids [--oom <uid>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    const-string v0, "      Start watching for and reporting uid state changes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    const-string v0, "      --oom: specify a uid for which to report detailed change messages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    const-string v0, "  hang [--allow-restart]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    const-string v0, "      Hang the system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    const-string v0, "      --allow-restart: allow watchdog to perform normal system restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    const-string v0, "  restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    const-string v0, "      Restart the user-space system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    const-string v0, "  idle-maintenance"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    const-string v0, "      Perform idle maintenance now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    const-string v0, "  screen-compat [on|off] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    const-string v0, "      Control screen compatibility mode of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    const-string v0, "  package-importance <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    const-string v0, "      Print current importance of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3261
    const-string v0, "  to-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    const-string v0, "      Print the given Intent specification as a URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    const-string v0, "  to-intent-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    const-string v0, "      Print the given Intent specification as an intent: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    const-string v0, "  to-app-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    const-string v0, "      Print the given Intent specification as an android-app: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3267
    const-string v0, "  switch-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3268
    const-string v0, "      Switch to put USER_ID in the foreground, starting"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3269
    const-string v0, "      execution of that user if it is currently stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    const-string v0, "  get-current-user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    const-string v0, "      Returns id of the current foreground user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    const-string v0, "  start-user [-w] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    const-string v0, "      Start USER_ID in background if it is currently stopped;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    const-string v0, "      use switch-user if you want to start the user in foreground."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    const-string v0, "      -w: wait for start-user to complete and the user to be unlocked."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    const-string v0, "  unlock-user <USER_ID> [TOKEN_HEX]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    const-string v0, "      Attempt to unlock the given user using the given authorization token."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    const-string v0, "  stop-user [-w] [-f] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    const-string v0, "      Stop execution of USER_ID, not allowing it to run any"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    const-string v0, "      code until a later explicit start or switch to it."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    const-string v0, "      -w: wait for stop-user to complete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    const-string v0, "      -f: force stop even if there are related users that cannot be stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    const-string v0, "  is-user-stopped <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3284
    const-string v0, "      Returns whether <USER_ID> has been stopped or not."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    const-string v0, "  get-started-user-state <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    const-string v0, "      Gets the current state of the given started user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3287
    const-string v0, "  track-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3288
    const-string v0, "      Enable association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3289
    const-string v0, "  untrack-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    const-string v0, "      Disable and clear association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    const-string v0, "  get-uid-state <UID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    const-string v0, "      Gets the process state of an app given its <UID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    const-string v0, "  attach-agent <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    const-string v0, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    const-string v0, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    const-string v0, "      Retrieve the configuration and any recent configurations of the device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    const-string v0, "      --days: also return last N days of configurations that have been seen."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    const-string v0, "      --device: also output global device configuration info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    const-string v0, "      --proto: return result as a proto; does not include --days info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3300
    const-string v0, "      --display: Specify for which display to run the command; if not "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3301
    const-string v0, "          specified then run for the default display."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    const-string v0, "  supports-multiwindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    const-string v0, "      Returns true if the device supports multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    const-string v0, "  supports-split-screen-multi-window"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    const-string v0, "      Returns true if the device supports split screen multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    const-string v0, "  suppress-resize-config-changes <true|false>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    const-string v0, "      Suppresses configuration changes due to user resizing an activity/task."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    const-string v0, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3309
    const-string v0, "      Sets the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    const-string v0, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    const-string v0, "      Returns the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3312
    const-string v0, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3313
    const-string v0, "      Puts an app in the standby bucket."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3314
    const-string v0, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    const-string v0, "      Returns the standby bucket of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    const-string v0, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3317
    const-string v0, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3318
    const-string v0, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3319
    const-string v0, "  display [COMMAND] [...]: sub-commands for operating on displays."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3320
    const-string v0, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    const-string v0, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    const-string v0, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3323
    const-string v0, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3324
    const-string v0, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    const-string v0, "           bottom (false) of <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3326
    const-string v0, "       resize-docked-stack <LEFT,TOP,RIGHT,BOTTOM> [<TASK_LEFT,TASK_TOP,TASK_RIGHT,TASK_BOTTOM>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const-string v0, "           Change docked stack to <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    const-string v0, "           and supplying temporary different task bounds indicated by"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    const-string v0, "           <TASK_LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3330
    const-string v0, "       move-top-activity-to-pinned-stack: <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    const-string v0, "           Moves the top activity from"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3332
    const-string v0, "           <STACK_ID> to the pinned stack using <LEFT,TOP,RIGHT,BOTTOM> for the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3333
    const-string v0, "           bounds of the pinned stack."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3334
    const-string v0, "       positiontask <TASK_ID> <STACK_ID> <POSITION>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3335
    const-string v0, "           Place <TASK_ID> in <STACK_ID> at <POSITION>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3336
    const-string v0, "       list"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3337
    const-string v0, "           List all of the activity stacks and their sizes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3338
    const-string v0, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3339
    const-string v0, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    const-string v0, "       remove <STACK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3341
    const-string v0, "           Remove stack <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3342
    const-string v0, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    const-string v0, "       lock <TASK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3344
    const-string v0, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    const-string v0, "       lock stop"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3346
    const-string v0, "           End the current task lock."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    const-string v0, "       resizeable <TASK_ID> [0|1|2|3]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3348
    const-string v0, "           Change resizeable mode of <TASK_ID> to one of the following:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    const-string v0, "           0: unresizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    const-string v0, "           1: crop_windows"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    const-string v0, "           2: resizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    const-string v0, "           3: resizeable_and_pipable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3353
    const-string v0, "       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    const-string v0, "           Makes sure <TASK_ID> is in a stack with the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3355
    const-string v0, "           Forces the task to be resizeable and creates a stack if no existing stack"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    const-string v0, "           has the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3357
    const-string v0, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3358
    const-string v0, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    const-string v0, "      without restarting any processes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    const-string v0, "  write"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    const-string v0, "      Write all pending state to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3362
    const-string v0, "  compat [COMMAND] [...]: sub-commands for toggling app-compat changes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    const-string v0, "         enable|disable|reset <CHANGE_ID|CHANGE_NAME> <PACKAGE_NAME>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    const-string v0, "            Toggles a change either by id or by name for <PACKAGE_NAME>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3365
    const-string v0, "            It kills <PACKAGE_NAME> (to allow the toggle to take effect)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3366
    const-string v1, "         enable-all|disable-all <targetSdkVersion> <PACKAGE_NAME"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3367
    const-string v1, "            Toggles all changes that are gated by <targetSdkVersion>."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3368
    const-string v1, "         reset-all <PACKAGE_NAME>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3369
    const-string v1, "            Removes all existing overrides for all changes for "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3370
    const-string v1, "            <PACKAGE_NAME> (back to default behaviour)."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3373
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3375
    :goto_0
    return-void
.end method

.method private getBounds()Landroid/graphics/Rect;
    .locals 12

    .line 2624
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2625
    .local v0, "leftStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2626
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2627
    .local v2, "topStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2628
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2629
    .local v4, "rightStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2630
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 2631
    .local v6, "bottomStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2632
    .local v7, "bottom":I
    const/4 v8, 0x0

    if-gez v1, :cond_0

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad left arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    return-object v8

    .line 2636
    :cond_0
    if-gez v3, :cond_1

    .line 2637
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad top arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    return-object v8

    .line 2640
    :cond_1
    if-gtz v5, :cond_2

    .line 2641
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad right arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    return-object v8

    .line 2644
    :cond_2
    if-gtz v7, :cond_3

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad bottom arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    return-object v8

    .line 2648
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .locals 14
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .line 2038
    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 2040
    .local v0, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2041
    .local v8, "now":J
    mul-int/lit8 v1, p1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    sub-long v10, v8, v1

    .line 2044
    .local v10, "nDaysAgo":J
    const/4 v2, 0x4

    :try_start_0
    const-string v7, "com.android.shell"

    move-object v1, v0

    move-wide v3, v10

    move-wide v5, v8

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2046
    .local v1, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v1, :cond_0

    .line 2047
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2050
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2051
    .local v2, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 2052
    .local v3, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2053
    .local v4, "configStatsListSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 2054
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    .line 2055
    .local v6, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v7

    .line 2056
    .local v7, "indexOfKey":I
    if-gez v7, :cond_1

    .line 2057
    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2059
    :cond_1
    nop

    .line 2060
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2059
    invoke-virtual {v2, v7, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2053
    .end local v6    # "stats":Landroid/app/usage/ConfigurationStats;
    .end local v7    # "indexOfKey":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2064
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Lcom/android/server/am/ActivityManagerShellCommand$4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand$4;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 2071
    .local v5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2072
    .local v6, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2073
    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    return-object v6

    .line 2076
    .end local v1    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .end local v2    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    .end local v3    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .end local v4    # "configStatsListSize":I
    .end local v5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    .end local v6    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    :catch_0
    move-exception v1

    .line 2077
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3055
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3056
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    .line 3057
    const-string v1, "Error: Activity manager has no configuration"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const/4 v1, 0x0

    return-object v1

    .line 3061
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3062
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 3064
    new-instance v2, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v2
.end method

.method static synthetic lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .locals 2
    .param p0, "o1"    # Landroid/content/pm/FeatureInfo;
    .param p1, "o2"    # Landroid/content/pm/FeatureInfo;

    .line 2296
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2297
    :cond_0
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 2298
    :cond_1
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 2299
    :cond_2
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .locals 3
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 328
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 329
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 330
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 332
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 333
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 335
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 336
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 337
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 338
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 339
    iput v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 340
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 341
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 342
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    .line 344
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static removeWallOption()V
    .locals 4

    .line 829
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "props":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "-Xprofile:wallclock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 831
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_0
    return-void
.end method

.method private runCompat(Ljava/io/PrintWriter;)I
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2953
    move-object/from16 v1, p1

    .line 2954
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/compat/PlatformCompat;

    .line 2955
    .local v2, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2956
    .local v3, "toggleValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2957
    .local v4, "toggleAll":Z
    const/4 v5, -0x1

    .line 2958
    .local v5, "targetSdkVersion":I
    const-wide/16 v6, -0x1

    .line 2960
    .local v6, "changeId":J
    const-string v0, "-all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "\'."

    const-string/jumbo v10, "reset"

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v8, :cond_0

    .line 2961
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2962
    const/4 v4, 0x1

    .line 2963
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2965
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    .line 2969
    goto :goto_1

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Invalid targetSdkVersion!"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    return v11

    .line 2972
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 2974
    .local v8, "changeIdString":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v6, v13

    .line 2977
    goto :goto_0

    .line 2975
    :catch_1
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 2976
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2, v8}, Lcom/android/server/compat/PlatformCompat;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide v6

    .line 2978
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const-wide/16 v13, -0x1

    cmp-long v0, v6, v13

    if-nez v0, :cond_1

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown or invalid change: \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    return v11

    .line 2983
    .end local v8    # "changeIdString":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 2984
    .local v8, "packageName":Ljava/lang/String;
    if-nez v4, :cond_2

    invoke-virtual {v2, v6, v7}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Warning! Change "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " is not known yet. Enabling/disabling it could have no effect."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    .line 2989
    .local v13, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v0

    .line 2991
    .local v14, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v15, -0x4d6ada7d

    const/4 v12, 0x1

    if-eq v0, v15, :cond_6

    const v15, 0x6761d4f

    if-eq v0, v15, :cond_5

    const v10, 0x639e22e8

    if-eq v0, v10, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    const-string v0, "disable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v12

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    const-string v0, "enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    const/4 v0, -0x1

    :goto_3
    const-string v10, " changes gated by targetSdkVersion "

    const-string v15, " for "

    const-string v11, "."

    if-eqz v0, :cond_d

    if-eq v0, v12, :cond_a

    const/4 v12, 0x2

    if-eq v0, v12, :cond_7

    .line 3044
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid toggle value: \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3048
    goto/16 :goto_7

    .line 3031
    :cond_7
    const-string v0, " to default value."

    if-eqz v4, :cond_8

    .line 3032
    :try_start_4
    invoke-virtual {v2, v8}, Lcom/android/server/compat/PlatformCompat;->clearOverrides(Ljava/lang/String;)V

    .line 3033
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reset all changes for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const/4 v9, 0x0

    return v9

    .line 3036
    :cond_8
    invoke-virtual {v2, v6, v7, v8}, Lcom/android/server/compat/PlatformCompat;->clearOverride(JLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3037
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reset change "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3040
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No override exists for changeId "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    :goto_4
    const/4 v9, 0x0

    return v9

    .line 3012
    :cond_a
    if-eqz v4, :cond_c

    .line 3013
    invoke-virtual {v2, v8, v5}, Lcom/android/server/compat/PlatformCompat;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    .line 3015
    .local v0, "numChanges":I
    if-nez v0, :cond_b

    .line 3016
    const-string v9, "No changes were disabled."

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const/4 v9, -0x1

    return v9

    .line 3019
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disabled "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    .end local v0    # "numChanges":I
    goto :goto_5

    .line 3022
    :cond_c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3023
    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v9, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v9, v13, v14}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v0, v9}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 3026
    .local v0, "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {v2, v0, v8}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 3027
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disabled change "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    .end local v0    # "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :goto_5
    const/4 v9, 0x0

    return v9

    .line 2993
    :cond_d
    if-eqz v4, :cond_f

    .line 2994
    invoke-virtual {v2, v8, v5}, Lcom/android/server/compat/PlatformCompat;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v0

    .line 2996
    .local v0, "numChanges":I
    if-nez v0, :cond_e

    .line 2997
    const-string v9, "No changes were enabled."

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const/4 v9, -0x1

    return v9

    .line 3000
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enabled "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    .end local v0    # "numChanges":I
    goto :goto_6

    .line 3003
    :cond_f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3004
    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v9, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v9, v13, v14}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v0, v9}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 3007
    .local v0, "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {v2, v0, v8}, Lcom/android/server/compat/PlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 3008
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enabled change "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3010
    .end local v0    # "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :goto_6
    const/4 v9, 0x0

    return v9

    .line 3046
    :catch_2
    move-exception v0

    .line 3047
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_7
    const/4 v9, -0x1

    return v9
.end method

.method private runProfile(Ljava/io/PrintWriter;)I
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 839
    .local v2, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 840
    .local v0, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 841
    .local v3, "start":Z
    const/4 v4, 0x0

    .line 842
    .local v4, "wall":Z
    const/4 v5, -0x2

    .line 843
    .local v5, "userId":I
    const/4 v12, 0x0

    .line 844
    .local v12, "profileType":I
    const/4 v13, 0x0

    iput v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 845
    iput-boolean v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 847
    const/4 v6, 0x0

    .line 849
    .local v6, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 851
    .local v7, "cmd":Ljava/lang/String;
    const-string/jumbo v8, "start"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Error: Unknown option: "

    const-string v11, "--user"

    const/4 v14, -0x1

    if-eqz v9, :cond_5

    .line 852
    const/4 v3, 0x1

    .line 854
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "opt":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 855
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 857
    :cond_0
    const-string v8, "--wall"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 858
    const/4 v4, 0x1

    goto :goto_0

    .line 859
    :cond_1
    const-string v8, "--streaming"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 860
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_0

    .line 861
    :cond_2
    const-string v8, "--sampling"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_0

    .line 864
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    return v14

    .line 868
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 869
    .end local v9    # "opt":Ljava/lang/String;
    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_2

    :cond_5
    const-string/jumbo v9, "stop"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 871
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 872
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 875
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    return v14

    .line 879
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 880
    .end local v9    # "opt":Ljava/lang/String;
    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_2

    .line 882
    :cond_8
    move-object v6, v7

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 884
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 885
    const/4 v3, 0x1

    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_2

    .line 886
    :cond_9
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    move-object v15, v6

    move-object/from16 v16, v7

    .line 891
    .end local v6    # "process":Ljava/lang/String;
    .end local v7    # "cmd":Ljava/lang/String;
    .local v15, "process":Ljava/lang/String;
    .local v16, "cmd":Ljava/lang/String;
    :goto_2
    if-ne v5, v14, :cond_a

    .line 892
    const-string v6, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    return v14

    .line 896
    :cond_a
    const/4 v6, 0x0

    .line 897
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .line 899
    .local v7, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v3, :cond_c

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 901
    const-string/jumbo v8, "w"

    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 902
    if-nez v6, :cond_b

    .line 903
    return v14

    .line 905
    :cond_b
    new-instance v8, Landroid/app/ProfilerInfo;

    iget v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    const/16 v21, 0x0

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v9

    move/from16 v22, v10

    invoke-direct/range {v17 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v7, v8

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_3

    .line 899
    :cond_c
    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 910
    .end local v0    # "profileFile":Ljava/lang/String;
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v17, "profileFile":Ljava/lang/String;
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    if-eqz v4, :cond_e

    .line 912
    :try_start_0
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_d

    const-string v6, "-Xprofile:wallclock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 914
    .end local v0    # "props":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -Xprofile:wallclock"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_4

    .line 926
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 917
    :cond_e
    :goto_4
    nop

    .line 920
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v15

    move v8, v5

    move v9, v3

    move-object/from16 v10, v19

    move v11, v12

    invoke-interface/range {v6 .. v11}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 921
    const/4 v4, 0x0

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROFILE FAILED on process "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    nop

    .line 926
    nop

    .line 923
    return v14

    .line 926
    :cond_f
    nop

    .line 930
    return v13

    .line 929
    :goto_5
    throw v0

    .line 887
    .end local v15    # "process":Ljava/lang/String;
    .end local v16    # "cmd":Ljava/lang/String;
    .end local v17    # "profileFile":Ljava/lang/String;
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profileFile":Ljava/lang/String;
    .local v6, "process":Ljava/lang/String;
    .local v7, "cmd":Ljava/lang/String;
    :cond_10
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profile command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private switchUserAndWaitForComplete(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1788
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1789
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v2, :cond_0

    .line 1791
    return v1

    .line 1795
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 1796
    .local v1, "switchLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V

    const-class v4, Lcom/android/server/am/ActivityManagerShellCommand;

    .line 1804
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1796
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 1807
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v2

    .line 1808
    .local v2, "switched":Z
    if-nez v2, :cond_1

    .line 1810
    const/4 v3, 0x0

    return v3

    .line 1815
    :cond_1
    const-wide/32 v3, 0x1d4c0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1818
    goto :goto_0

    .line 1816
    :catch_0
    move-exception v3

    .line 1817
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: Thread interrupted unexpectedly."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return v2
.end method

.method private writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 18
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "config"    # Landroid/content/res/Configuration;
    .param p6, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 2214
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    const-wide/16 v5, -0x1

    .line 2215
    .local v5, "token":J
    if-eqz v2, :cond_0

    .line 2216
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2217
    const-wide v7, 0x10d00000001L

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2219
    const-wide v7, 0x10d00000002L

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2221
    const-wide v7, 0x10d00000003L

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v2, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2224
    :cond_0
    if-eqz v3, :cond_1

    .line 2225
    const-string/jumbo v0, "stable-width-px: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2226
    const-string/jumbo v0, "stable-height-px: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2227
    const-string/jumbo v0, "stable-density-dpi: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2230
    :cond_1
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    move-object v7, v0

    .line 2231
    .local v7, "memreader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2232
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/KeyguardManager;

    .line 2233
    .local v8, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    .line 2234
    const-wide v9, 0x10400000004L

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2235
    const-wide v9, 0x10800000005L

    .line 2236
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 2235
    invoke-virtual {v2, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2237
    const-wide v9, 0x10d00000006L

    .line 2238
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 2237
    invoke-virtual {v2, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2239
    const-wide v9, 0x10800000007L

    .line 2240
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    .line 2239
    invoke-virtual {v2, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2242
    :cond_2
    if-eqz v3, :cond_3

    .line 2243
    const-string/jumbo v0, "total-ram: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 2244
    const-string/jumbo v0, "low-ram: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2245
    const-string/jumbo v0, "max-cores: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2246
    const-string v0, "has-secure-screen-lock: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2249
    :cond_3
    const/4 v9, 0x0

    .line 2251
    .local v9, "configInfo":Landroid/content/pm/ConfigurationInfo;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    .end local v9    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .local v0, "configInfo":Landroid/content/pm/ConfigurationInfo;
    nop

    .line 2255
    iget v9, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz v9, :cond_5

    .line 2256
    if-eqz v2, :cond_4

    .line 2257
    const-wide v9, 0x10d00000008L

    iget v11, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v2, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2260
    :cond_4
    if-eqz v3, :cond_5

    .line 2261
    const-string/jumbo v9, "opengl-version: 0x"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    iget v9, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v9

    .line 2267
    .local v9, "glExtensionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 2268
    .local v10, "glExtensions":[Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, [Ljava/lang/String;

    .line 2269
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2270
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v12, v10

    if-ge v11, v12, :cond_8

    .line 2271
    if-eqz v2, :cond_6

    .line 2272
    const-wide v12, 0x20900000009L

    aget-object v14, v10, v11

    invoke-virtual {v2, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2275
    :cond_6
    if-eqz v3, :cond_7

    .line 2276
    const-string/jumbo v12, "opengl-extensions: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v12, v10, v11

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2270
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2281
    .end local v11    # "i":I
    :cond_8
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2282
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v12

    .line 2283
    .local v12, "slibs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    sget-object v13, Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;->INSTANCE:Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;

    invoke-static {v13}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2284
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    .line 2285
    if-eqz v2, :cond_9

    .line 2286
    const-wide v14, 0x2090000000aL

    .line 2287
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/SharedLibraryInfo;

    move-object/from16 v17, v0

    .end local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .local v17, "configInfo":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2286
    invoke-virtual {v2, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    .line 2285
    .end local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_9
    move-object/from16 v17, v0

    .line 2289
    .end local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    :goto_2
    if-eqz v3, :cond_a

    .line 2290
    const-string/jumbo v0, "shared-libraries: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_1

    .end local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_b
    move-object/from16 v17, v0

    .line 2294
    .end local v0    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .end local v13    # "i":I
    .restart local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2295
    .local v0, "features":[Landroid/content/pm/FeatureInfo;
    sget-object v13, Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;

    invoke-static {v0, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2302
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    array-length v14, v0

    if-ge v13, v14, :cond_e

    .line 2303
    aget-object v14, v0, v13

    iget-object v14, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 2304
    if-eqz v2, :cond_c

    .line 2305
    const-wide v14, 0x2090000000bL

    aget-object v1, v0, v13

    iget-object v1, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2307
    :cond_c
    if-eqz v3, :cond_d

    .line 2308
    const-string v1, "features: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v1, v0, v13

    iget-object v1, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2302
    :cond_d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    goto :goto_3

    .line 2313
    .end local v13    # "i":I
    :cond_e
    if-eqz v2, :cond_f

    .line 2314
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2316
    :cond_f
    return-void

    .line 2252
    .end local v0    # "features":[Landroid/content/pm/FeatureInfo;
    .end local v10    # "glExtensions":[Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "slibs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v17    # "configInfo":Landroid/content/pm/ConfigurationInfo;
    .local v9, "configInfo":Landroid/content/pm/ConfigurationInfo;
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method getGlExtensionsFromDriver()Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2138
    .local v0, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljavax/microedition/khronos/egl/EGL10;

    .line 2139
    .local v13, "egl":Ljavax/microedition/khronos/egl/EGL10;
    if-nez v13, :cond_0

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    return-object v0

    .line 2145
    :cond_0
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v14

    .line 2146
    .local v14, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 2147
    .local v15, "version":[I
    invoke-interface {v13, v14, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 2150
    const/4 v12, 0x1

    new-array v10, v12, [I

    .line 2151
    .local v10, "numConfigs":[I
    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-interface {v13, v14, v1, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    return-object v0

    .line 2157
    :cond_1
    aget v1, v10, v9

    new-array v8, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 2158
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    aget v1, v10, v9

    invoke-interface {v13, v14, v8, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    return-object v0

    .line 2166
    :cond_2
    const/4 v1, 0x5

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    .line 2174
    .local v4, "surfaceSize":[I
    const/16 v16, 0x3098

    .line 2175
    .local v16, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v1, 0x3

    new-array v11, v1, [I

    fill-array-data v11, :array_1

    .line 2178
    .local v11, "gles2":[I
    new-array v7, v12, [I

    .line 2180
    .local v7, "attrib":[I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_0
    aget v1, v10, v9

    if-ge v6, v1, :cond_7

    .line 2182
    aget-object v1, v8, v6

    const/16 v2, 0x3027

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2183
    aget v1, v7, v9

    const/16 v2, 0x3050

    if-ne v1, v2, :cond_3

    .line 2184
    move/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    goto/16 :goto_2

    .line 2190
    :cond_3
    aget-object v1, v8, v6

    const/16 v2, 0x3033

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2191
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-nez v1, :cond_4

    .line 2192
    move/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    goto :goto_2

    .line 2195
    :cond_4
    const/16 v17, 0x1

    .line 2196
    .local v17, "EGL_OPENGL_ES_BIT":I
    const/16 v18, 0x4

    .line 2197
    .local v18, "EGL_OPENGL_ES2_BIT":I
    aget-object v1, v8, v6

    const/16 v2, 0x3040

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2198
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-eqz v1, :cond_5

    .line 2199
    aget-object v3, v8, v6

    const/4 v5, 0x0

    move-object v1, v13

    move-object v2, v14

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_1

    .line 2198
    .end local v19    # "i":I
    .restart local v6    # "i":I
    :cond_5
    move/from16 v19, v6

    .line 2201
    .end local v6    # "i":I
    .restart local v19    # "i":I
    :goto_1
    aget v1, v7, v9

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 2202
    aget-object v1, v8, v19

    move-object v2, v7

    .end local v7    # "attrib":[I
    .local v2, "attrib":[I
    move-object v7, v13

    move-object v3, v8

    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v8, v14

    move v5, v9

    move-object v9, v1

    move-object v1, v10

    .end local v10    # "numConfigs":[I
    .local v1, "numConfigs":[I
    move-object v10, v4

    move v6, v12

    move-object v12, v0

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_2

    .line 2201
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v7    # "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_6
    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    .line 2180
    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .end local v17    # "EGL_OPENGL_ES_BIT":I
    .end local v18    # "EGL_OPENGL_ES2_BIT":I
    .restart local v1    # "numConfigs":[I
    .restart local v2    # "attrib":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_2
    add-int/lit8 v7, v19, 0x1

    move-object v10, v1

    move-object v8, v3

    move v9, v5

    move v12, v6

    move v6, v7

    move-object v7, v2

    .end local v19    # "i":I
    .local v7, "i":I
    goto :goto_0

    .line 2207
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v7, "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_7
    invoke-interface {v13, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 2209
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method getStepSize(IIIZ)I
    .locals 2
    .param p1, "current"    # I
    .param p2, "target"    # I
    .param p3, "inStepSize"    # I
    .param p4, "greaterThanTarget"    # Z

    .line 2854
    const/4 v0, 0x0

    .line 2855
    .local v0, "stepSize":I
    if-eqz p4, :cond_0

    if-ge p2, p1, :cond_0

    .line 2856
    sub-int/2addr p1, p3

    .line 2857
    move v0, p3

    .line 2858
    if-le p2, p1, :cond_0

    .line 2859
    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    .line 2862
    :cond_0
    if-nez p4, :cond_1

    if-le p2, p1, :cond_1

    .line 2863
    add-int/2addr p1, p3

    .line 2864
    move v0, p3

    .line 2865
    if-ge p2, p1, :cond_1

    .line 2866
    sub-int v1, p1, p2

    add-int/2addr v0, v1

    .line 2869
    :cond_1
    return v0
.end method

.method getUidState(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    .line 2030
    .local v0, "state":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2031
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2032
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "PROCESS_STATE_"

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2033
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    return v2
.end method

.method moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;
    .param p3, "stackRect"    # Landroid/graphics/Rect;
    .param p4, "stepSize"    # I
    .param p5, "maxToTravel"    # I
    .param p6, "movingForward"    # Z
    .param p7, "horizontal"    # Z
    .param p8, "delay_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2814
    const/4 v0, 0x0

    if-eqz p6, :cond_3

    .line 2815
    :goto_0
    if-lez p5, :cond_7

    if-eqz p7, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_1

    :cond_0
    if-nez p7, :cond_7

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_7

    .line 2818
    :cond_1
    if-eqz p7, :cond_2

    .line 2819
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2820
    .local v1, "maxMove":I
    sub-int/2addr p5, v1

    .line 2821
    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2822
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 2824
    .end local v1    # "maxMove":I
    :cond_2
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2825
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2826
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2827
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2829
    :goto_1
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_0

    .line 2832
    .end local v1    # "maxMove":I
    :cond_3
    :goto_2
    if-gez p5, :cond_7

    if-eqz p7, :cond_4

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_5

    :cond_4
    if-nez p7, :cond_7

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_7

    .line 2835
    :cond_5
    if-eqz p7, :cond_6

    .line 2836
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2837
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2838
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2839
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 2841
    .end local v1    # "maxMove":I
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2842
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2843
    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2844
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2846
    :goto_3
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_2

    .line 2850
    .end local v1    # "maxMove":I
    :cond_7
    return p5
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 189
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v2, "refresh-settings-cache"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "clear-exit-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_34
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_35
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_37
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_38
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_39
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x30

    goto :goto_1

    :sswitch_3a
    const-string v2, "compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :sswitch_3b
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_3c
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x27

    goto :goto_1

    :sswitch_3d
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    goto :goto_1

    :sswitch_3e
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    goto :goto_1

    :sswitch_3f
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x32

    goto :goto_1

    :sswitch_40
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_41
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRefreshSettingsCache()I

    move-result v1

    return v1

    .line 314
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCompat(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 312
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 310
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 308
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 306
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 304
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 302
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 300
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 298
    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 296
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 294
    :pswitch_b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 292
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 290
    :pswitch_d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 288
    :pswitch_e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 286
    :pswitch_f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 284
    :pswitch_10
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 282
    :pswitch_11
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 280
    :pswitch_12
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 278
    :pswitch_13
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 276
    :pswitch_14
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 274
    :pswitch_15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 272
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 270
    :pswitch_17
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 268
    :pswitch_18
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 266
    :pswitch_19
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 264
    :pswitch_1a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 262
    :pswitch_1b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 260
    :pswitch_1c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 258
    :pswitch_1d
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v1

    return v1

    .line 256
    :pswitch_1e
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v1

    return v1

    .line 254
    :pswitch_1f
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v1

    return v1

    .line 252
    :pswitch_20
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 250
    :pswitch_21
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 248
    :pswitch_22
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 246
    :pswitch_23
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 244
    :pswitch_24
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 242
    :pswitch_25
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 240
    :pswitch_26
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 238
    :pswitch_27
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 236
    :pswitch_28
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 234
    :pswitch_29
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 232
    :pswitch_2a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 230
    :pswitch_2b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 228
    :pswitch_2c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 226
    :pswitch_2d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearExitInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 224
    :pswitch_2e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 222
    :pswitch_2f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 220
    :pswitch_30
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 218
    :pswitch_31
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 216
    :pswitch_32
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 214
    :pswitch_33
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 212
    :pswitch_34
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 210
    :pswitch_35
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 207
    :pswitch_36
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return v1

    .line 205
    :pswitch_37
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 203
    :pswitch_38
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 200
    :pswitch_39
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v1

    return v1

    .line 195
    :pswitch_3a
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v1

    return v1

    .line 192
    :pswitch_3b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 318
    :goto_2
    return v1

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7e761220 -> :sswitch_41
        -0x7566d004 -> :sswitch_40
        -0x6684cefe -> :sswitch_3f
        -0x65f435a5 -> :sswitch_3e
        -0x6366a39f -> :sswitch_3d
        -0x608449aa -> :sswitch_3c
        -0x607e173f -> :sswitch_3b
        -0x50c0cc7e -> :sswitch_3a
        -0x4ef4b7a7 -> :sswitch_39
        -0x4db101b9 -> :sswitch_38
        -0x436e13b6 -> :sswitch_37
        -0x3bc220e3 -> :sswitch_36
        -0x3988e78d -> :sswitch_35
        -0x376fe74e -> :sswitch_34
        -0x3619e74c -> :sswitch_33
        -0x3530e48a -> :sswitch_32
        -0x33db6ce6 -> :sswitch_31
        -0x30697b4a -> :sswitch_30
        -0x2c900a2b -> :sswitch_2f
        -0x29b36e67 -> :sswitch_2e
        -0x2420b54e -> :sswitch_2d
        -0x20b34e72 -> :sswitch_2c
        -0x171366ac -> :sswitch_2b
        -0x152733fd -> :sswitch_2a
        -0x12717657 -> :sswitch_29
        -0xa310e8a -> :sswitch_28
        -0x8b4339f -> :sswitch_27
        -0x83a5383 -> :sswitch_26
        -0x5ffb810 -> :sswitch_25
        -0x1a6e7d0 -> :sswitch_24
        0x30c072 -> :sswitch_23
        0x323b5e -> :sswitch_22
        0x363585 -> :sswitch_21
        0x547b9a4 -> :sswitch_20
        0x5a863a7 -> :sswitch_1f
        0x68ac288 -> :sswitch_1e
        0x68ac462 -> :sswitch_1d
        0x6c257df -> :sswitch_1c
        0xb07b013 -> :sswitch_1b
        0xe24026e -> :sswitch_1a
        0x20c2801a -> :sswitch_19
        0x251993ad -> :sswitch_18
        0x27c1d6ad -> :sswitch_17
        0x2894b589 -> :sswitch_16
        0x2b19d394 -> :sswitch_15
        0x2d9208a0 -> :sswitch_14
        0x302bd54d -> :sswitch_13
        0x304b5275 -> :sswitch_12
        0x30b487aa -> :sswitch_11
        0x310633ae -> :sswitch_10
        0x35abdbf4 -> :sswitch_f
        0x3d13bd7d -> :sswitch_e
        0x404a0027 -> :sswitch_d
        0x416a9e0f -> :sswitch_c
        0x434f294b -> :sswitch_b
        0x465c428a -> :sswitch_a
        0x48b444b2 -> :sswitch_9
        0x49b0bd5a -> :sswitch_8
        0x532d63e7 -> :sswitch_7
        0x5e69b6b6 -> :sswitch_6
        0x607e963c -> :sswitch_5
        0x63a518c2 -> :sswitch_4
        0x6e6f530e -> :sswitch_3
        0x6ef5269a -> :sswitch_2
        0x6f0f8fea -> :sswitch_1
        0x7c2bb6c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 3069
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3070
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    .line 3071
    return-void
.end method

.method runAttachAgent(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2889
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2892
    .local v0, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2894
    .local v1, "agent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    const/4 v2, -0x1

    return v2

    .line 2898
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    const/4 v2, 0x0

    return v2
.end method

.method runBugReport(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    const/4 v0, 0x1

    .line 1075
    .local v0, "fullBugreport":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1076
    const-string v1, "--progress"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1078
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V

    goto :goto_0

    .line 1079
    :cond_0
    const-string v1, "--telephony"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v3, ""

    invoke-interface {v1, v3, v3}, Landroid/app/IActivityManager;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    const/4 v1, -0x1

    return v1

    .line 1088
    :cond_2
    if-eqz v0, :cond_3

    .line 1089
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestFullBugReport()V

    .line 1091
    :cond_3
    const-string v1, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    const/4 v1, 0x0

    return v1
.end method

.method runClearDebugApp(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1032
    return v2
.end method

.method runClearExitInfo(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v2, "runClearExitInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const/4 v0, -0x2

    .line 1053
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1054
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1055
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1058
    :cond_0
    move-object v1, v3

    goto :goto_0

    .line 1061
    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    .line 1062
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1063
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_2

    .line 1064
    const/4 v4, -0x1

    return v4

    .line 1066
    :cond_2
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1068
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/AppExitInfoTracker;->clearHistoryProcessExitInfo(Ljava/lang/String;I)V

    .line 1069
    const/4 v2, 0x0

    return v2
.end method

.method runClearWatchHeap(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1044
    .local v6, "proc":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 1045
    const/4 v0, 0x0

    return v0
.end method

.method runCrash(Ljava/io/PrintWriter;)I
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    const/4 v0, -0x1

    .line 1115
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .local v8, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1116
    const-string v1, "--user"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    const/4 v1, -0x1

    return v1

    .line 1124
    :cond_1
    const/4 v1, -0x1

    .line 1125
    .local v1, "pid":I
    const/4 v2, 0x0

    .line 1126
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 1129
    .local v9, "arg":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1132
    move v10, v1

    move-object v11, v2

    goto :goto_1

    .line 1130
    :catch_0
    move-exception v3

    .line 1131
    .local v3, "e":Ljava/lang/NumberFormatException;
    move-object v2, v9

    move v10, v1

    move-object v11, v2

    .line 1133
    .end local v1    # "pid":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .local v10, "pid":I
    .local v11, "packageName":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, -0x1

    const/4 v7, 0x0

    const-string/jumbo v6, "shell-induced crash"

    move v3, v10

    move-object v4, v11

    move v5, v0

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 1134
    const/4 v1, 0x0

    return v1
.end method

.method runDisplay(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2591
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2592
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x60e6318c

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 2596
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    return v2

    .line 2594
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2652
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2653
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2654
    .local v1, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2655
    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2656
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityTaskManager;->moveStackToDisplay(II)V

    .line 2657
    const/4 v4, 0x0

    return v4
.end method

.method runDumpHeap(Ljava/io/PrintWriter;)I
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 935
    .local v3, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x1

    .line 936
    .local v0, "managed":Z
    const/4 v4, 0x0

    .line 937
    .local v4, "mallocInfo":Z
    const/4 v5, -0x2

    .line 938
    .local v5, "userId":I
    const/4 v6, 0x0

    move/from16 v16, v6

    move v6, v5

    move v5, v4

    move v4, v0

    .line 941
    .end local v0    # "managed":Z
    .local v4, "managed":Z
    .local v5, "mallocInfo":Z
    .local v6, "userId":I
    .local v16, "runGc":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .local v14, "opt":Ljava/lang/String;
    const/4 v13, -0x1

    if-eqz v0, :cond_5

    .line 942
    const-string v0, "--user"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v6

    .line 944
    if-ne v6, v13, :cond_0

    .line 945
    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    return v13

    .line 948
    :cond_1
    const-string v0, "-n"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    const/4 v4, 0x0

    goto :goto_0

    .line 950
    :cond_2
    const-string v0, "-g"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 951
    const/16 v16, 0x1

    goto :goto_0

    .line 952
    :cond_3
    const-string v0, "-m"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    const/4 v4, 0x0

    .line 954
    const/4 v5, 0x1

    goto :goto_0

    .line 956
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    return v13

    .line 960
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 961
    .local v12, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "heapFile":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 963
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v7

    invoke-static {v7}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 964
    .local v7, "localDateTime":Ljava/time/LocalDateTime;
    sget-object v8, Lcom/android/server/am/ActivityManagerShellCommand;->LOG_NAME_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v8, v7}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v8

    .line 965
    .local v8, "logNameTimeString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/local/tmp/heapdump-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".prof"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    .line 962
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v8    # "logNameTimeString":Ljava/lang/String;
    :cond_6
    move-object v11, v0

    .line 967
    .end local v0    # "heapFile":Ljava/lang/String;
    .local v11, "heapFile":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 970
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 971
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 972
    const-string/jumbo v0, "w"

    invoke-virtual {v1, v11, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 973
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v18, :cond_7

    .line 974
    return v13

    .line 977
    :cond_7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v10, v0

    .line 979
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v7, 0x0

    invoke-direct {v15, v0, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 986
    .local v15, "finishCallback":Landroid/os/RemoteCallback;
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v8, v12

    move v9, v6

    move-object/from16 v19, v10

    .end local v10    # "latch":Ljava/util/concurrent/CountDownLatch;
    .local v19, "latch":Ljava/util/concurrent/CountDownLatch;
    move v10, v4

    move-object/from16 v20, v11

    .end local v11    # "heapFile":Ljava/lang/String;
    .local v20, "heapFile":Ljava/lang/String;
    move v11, v5

    move-object v1, v12

    .end local v12    # "process":Ljava/lang/String;
    .local v1, "process":Ljava/lang/String;
    move/from16 v12, v16

    move v0, v13

    move-object/from16 v13, v20

    move-object/from16 v21, v14

    .end local v14    # "opt":Ljava/lang/String;
    .local v21, "opt":Ljava/lang/String;
    move-object/from16 v14, v18

    invoke-interface/range {v7 .. v15}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 988
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HEAP DUMP FAILED on process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    return v0

    .line 991
    :cond_8
    const-string v0, "Waiting for dump to finish..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 994
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    goto :goto_2

    .line 995
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 996
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v7, "Caught InterruptedException"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method runForceStop(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    const/4 v0, -0x1

    .line 1099
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1100
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    const/4 v1, -0x1

    return v1

    .line 1107
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1108
    const/4 v1, 0x0

    return v1
.end method

.method runGetConfig(Ljava/io/PrintWriter;)I
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2319
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, -0x1

    .line 2320
    .local v0, "days":I
    const/4 v1, 0x0

    .line 2321
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2322
    .local v2, "asProto":Z
    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    .line 2325
    .end local v0    # "days":I
    .end local v1    # "displayId":I
    .end local v2    # "asProto":Z
    .local v9, "days":I
    .local v10, "displayId":I
    .local v11, "asProto":Z
    .local v12, "inclDevice":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 2326
    const-string v0, "--days"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2328
    if-lez v9, :cond_0

    goto :goto_0

    .line 2329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--days must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :cond_1
    const-string v0, "--proto"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2332
    const/4 v11, 0x1

    goto :goto_0

    .line 2333
    :cond_2
    const-string v0, "--device"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2334
    const/4 v12, 0x1

    goto :goto_0

    .line 2335
    :cond_3
    const-string v0, "--display"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2336
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2337
    if-ltz v10, :cond_4

    goto :goto_0

    .line 2338
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--display must be a non-negative integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    return v1

    .line 2346
    :cond_6
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 2347
    .local v14, "config":Landroid/content/res/Configuration;
    if-nez v14, :cond_7

    .line 2348
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Activity manager has no configuration"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    return v1

    .line 2352
    :cond_7
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/display/DisplayManager;

    .line 2353
    .local v15, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v15, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 2355
    .local v6, "display":Landroid/view/Display;
    if-nez v6, :cond_8

    .line 2356
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Display does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    return v1

    .line 2360
    :cond_8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v0

    .line 2361
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2363
    if-eqz v11, :cond_a

    .line 2364
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 2365
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v0, 0x10b00000001L

    invoke-virtual {v14, v4, v0, v1, v5}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    .line 2366
    if-eqz v12, :cond_9

    .line 2367
    const-wide v2, 0x10b00000002L

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v17, v4

    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v17, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    move-object v5, v14

    move-object/from16 v18, v6

    .end local v6    # "display":Landroid/view/Display;
    .local v18, "display":Landroid/view/Display;
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 2366
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .end local v17    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v18    # "display":Landroid/view/Display;
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_9
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    .line 2369
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v17    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v18    # "display":Landroid/view/Display;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2370
    .end local v17    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto/16 :goto_4

    .line 2371
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .end local v18    # "display":Landroid/view/Display;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_a
    move-object/from16 v16, v5

    move-object/from16 v18, v6

    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v18    # "display":Landroid/view/Display;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {v14, v6}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    if-eqz v12, :cond_b

    .line 2374
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object v5, v14

    move-object/from16 v16, v6

    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_2

    .line 2373
    .end local v16    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    :cond_b
    move-object/from16 v16, v6

    .line 2377
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "metrics":Landroid/util/DisplayMetrics;
    :goto_2
    if-ltz v9, :cond_c

    .line 2378
    invoke-direct {v7, v9}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object v0

    .line 2379
    .local v0, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2380
    .local v1, "recentConfigSize":I
    if-lez v1, :cond_c

    .line 2381
    const-string/jumbo v2, "recentConfigs:"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2382
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_c

    .line 2383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 2383
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2382
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2390
    .end local v0    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    .end local v1    # "recentConfigSize":I
    .end local v2    # "i":I
    :cond_c
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method runGetCurrentUser(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "Current user not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1859
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1860
    const/4 v1, 0x0

    return v1
.end method

.method runGetInactive(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2514
    const/4 v0, -0x2

    .line 2517
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2518
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2519
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2521
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2522
    const/4 v1, -0x1

    return v1

    .line 2525
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2527
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2529
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    const-string v4, "com.android.shell"

    invoke-interface {v3, v1, v0, v4}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 2530
    .local v4, "isIdle":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Idle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    const/4 v5, 0x0

    return v5
.end method

.method runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2484
    const/4 v0, -0x2

    .line 2487
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2488
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2491
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    const/4 v1, -0x1

    return v1

    .line 2495
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2497
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2499
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    if-eqz v1, :cond_2

    .line 2500
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2501
    .local v4, "bucket":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2502
    .end local v4    # "bucket":I
    goto :goto_2

    .line 2503
    :cond_2
    const-string v4, "com.android.shell"

    invoke-interface {v3, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2505
    .local v4, "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/AppStandbyInfo;

    .line 2506
    .local v6, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v7, v6, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget v7, v6, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 2508
    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    goto :goto_1

    .line 2510
    .end local v4    # "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :cond_3
    :goto_2
    const/4 v4, 0x0

    return v4
.end method

.method runGetStartedUserState(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1990
    .local v0, "userId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    goto :goto_0

    .line 1991
    :catch_0
    move-exception v1

    .line 1992
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method runHang(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1703
    const/4 v0, 0x0

    .line 1704
    .local v0, "allowRestart":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1705
    const-string v1, "--allow-restart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1706
    const/4 v0, 0x1

    goto :goto_0

    .line 1708
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    const/4 v1, -0x1

    return v1

    .line 1713
    :cond_1
    const-string v1, "Hanging the system..."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1715
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    .line 1716
    const/4 v1, 0x0

    return v1
.end method

.method runIdleMaintenance(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    const/4 v0, -0x1

    return v0

    .line 1739
    :cond_0
    const-string v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 1741
    const/4 v0, 0x0

    return v0
.end method

.method runIsUserStopped(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1980
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result v1

    .line 1981
    .local v1, "stopped":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1982
    const/4 v2, 0x0

    return v2
.end method

.method runKill(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    const/4 v0, -0x1

    .line 1141
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1142
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const/4 v1, -0x1

    return v1

    .line 1149
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1150
    const/4 v1, 0x0

    return v1
.end method

.method runKillAll(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method runMakeIdle(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    const/4 v0, -0x1

    .line 1162
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1163
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    const/4 v1, -0x1

    return v1

    .line 1170
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    .line 1171
    const/4 v1, 0x0

    return v1
.end method

.method runMonitor(Ljava/io/PrintWriter;)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, "gdbPort":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1490
    .local v1, "monkey":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v8, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1491
    const-string v2, "--gdb"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1493
    :cond_0
    const-string v2, "-m"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1494
    const/4 v1, 0x1

    goto :goto_0

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    const/4 v2, -0x1

    return v2

    .line 1501
    :cond_2
    new-instance v9, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v9

    move-object v4, p1

    move-object v6, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 1503
    .local v2, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    .line 1504
    const/4 v3, 0x0

    return v3
.end method

.method runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2716
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2717
    .local v0, "stackId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2718
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2720
    return v2

    .line 2723
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityTaskManager;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2724
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Didn\'t move top activity to pinned stack."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    return v2

    .line 2727
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method runNoHomeScreen(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2934
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2935
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 2936
    const/4 v1, -0x1

    return v1

    .line 2938
    :cond_0
    const v1, 0x11100aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2939
    const/4 v1, 0x0

    return v1
.end method

.method runPackageImportance(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v2, "com.android.shell"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1772
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1773
    const/4 v2, 0x0

    return v2
.end method

.method runRefreshSettingsCache()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2948
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->refreshSettingsCache()V

    .line 2949
    const/4 v0, 0x0

    return v0
.end method

.method runRestart(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const/4 v0, -0x1

    return v0

    .line 1726
    :cond_0
    const-string v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1728
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V

    .line 1729
    const/4 v0, 0x0

    return v0
.end method

.method runScreenCompat(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1747
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    const/4 v1, 0x1

    .local v1, "enabled":Z
    goto :goto_0

    .line 1749
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1750
    const/4 v1, 0x0

    .line 1756
    .restart local v1    # "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1759
    .local v2, "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    if-eqz v1, :cond_2

    .line 1760
    const/4 v5, 0x1

    goto :goto_1

    .line 1761
    :cond_2
    move v5, v3

    .line 1759
    :goto_1
    invoke-interface {v4, v2, v5}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    goto :goto_2

    .line 1762
    :catch_0
    move-exception v4

    .line 1764
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1765
    if-nez v2, :cond_1

    .line 1766
    return v3

    .line 1752
    .end local v1    # "enabled":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    const/4 v1, -0x1

    return v1
.end method

.method runSendBroadcast(Ljava/io/PrintWriter;)I
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 758
    const/4 v0, -0x2

    :try_start_0
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 762
    const/high16 v3, 0x400000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 763
    new-instance v8, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v8, v2}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    .line 764
    .local v8, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v18, 0x0

    if-nez v3, :cond_0

    move-object v12, v4

    goto :goto_0

    .line 765
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v18

    move-object v12, v5

    :goto_0
    nop

    .line 766
    .local v12, "requiredPermissions":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 768
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;

    if-nez v3, :cond_1

    move-object v14, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v14, v3

    .line 769
    .local v14, "bundle":Landroid/os/Bundle;
    :goto_1
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move/from16 v17, v6

    move-object v6, v0

    invoke-interface/range {v3 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 772
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    .line 773
    return v18

    .line 759
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v8    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .end local v12    # "requiredPermissions":[Ljava/lang/String;
    .end local v14    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 760
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method runSendTrimMemory(Ljava/io/PrintWriter;)I
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2535
    const/4 v0, -0x2

    .line 2537
    .local v0, "userId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_2

    .line 2538
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2539
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2540
    if-ne v0, v3, :cond_0

    .line 2541
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: Can\'t use user \'all\'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    return v3

    .line 2545
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    return v3

    .line 2550
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2551
    .local v1, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2553
    .local v4, "levelArg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    const-string v5, "HIDDEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v5, "RUNNING_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_3
    const-string v5, "MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "RUNNING_MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_5
    const-string v5, "BACKGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_6
    const-string v5, "RUNNING_CRITICAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    goto :goto_1

    :goto_0
    move v5, v3

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 2577
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2573
    :pswitch_0
    const/16 v5, 0x50

    .line 2574
    .local v5, "level":I
    goto :goto_3

    .line 2570
    .end local v5    # "level":I
    :pswitch_1
    const/16 v5, 0xf

    .line 2571
    .restart local v5    # "level":I
    goto :goto_3

    .line 2567
    .end local v5    # "level":I
    :pswitch_2
    const/16 v5, 0x3c

    .line 2568
    .restart local v5    # "level":I
    goto :goto_3

    .line 2564
    .end local v5    # "level":I
    :pswitch_3
    const/16 v5, 0xa

    .line 2565
    .restart local v5    # "level":I
    goto :goto_3

    .line 2561
    .end local v5    # "level":I
    :pswitch_4
    const/16 v5, 0x28

    .line 2562
    .restart local v5    # "level":I
    goto :goto_3

    .line 2558
    .end local v5    # "level":I
    :pswitch_5
    const/4 v5, 0x5

    .line 2559
    .restart local v5    # "level":I
    goto :goto_3

    .line 2555
    .end local v5    # "level":I
    :pswitch_6
    const/16 v5, 0x14

    .line 2556
    .restart local v5    # "level":I
    goto :goto_3

    .line 2581
    :goto_2
    nop

    .line 2583
    :goto_3
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v7, v1, v0, v5}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2584
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Unknown error: failed to set trim level"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    return v3

    .line 2587
    :cond_4
    return v6

    .line 2578
    .end local v5    # "level":I
    :catch_0
    move-exception v5

    .line 2579
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown level option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_6
        -0x327dbed2 -> :sswitch_5
        -0xd10205d -> :sswitch_4
        0x9c2ed03 -> :sswitch_3
        0xaeb2139 -> :sswitch_2
        0x3fef1094 -> :sswitch_1
        0x7f0191aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method runSetAgentApp(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "agent":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/4 v2, 0x0

    return v2
.end method

.method runSetDebugApp(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "wait":Z
    const/4 v1, 0x0

    .line 1007
    .local v1, "persistent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1008
    const-string v2, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1009
    const/4 v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    const-string v2, "--persistent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1011
    const/4 v1, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const/4 v2, -0x1

    return v2

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v0, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1020
    const/4 v4, 0x0

    return v4
.end method

.method runSetInactive(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2400
    const/4 v0, -0x2

    .line 2403
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2404
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2407
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    const/4 v1, -0x1

    return v1

    .line 2411
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2414
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "usagestats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v4

    .line 2416
    .local v4, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v4, v1, v5, v0}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    .line 2417
    const/4 v5, 0x0

    return v5
.end method

.method runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2446
    const/4 v0, -0x2

    .line 2449
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 2450
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2453
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2454
    return v3

    .line 2457
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2458
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2459
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2460
    .local v5, "bucket":I
    if-gez v5, :cond_2

    return v3

    .line 2461
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v6

    .line 2464
    .local v3, "multiple":Z
    :goto_1
    const-string/jumbo v7, "usagestats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v7

    .line 2466
    .local v7, "usm":Landroid/app/usage/IUsageStatsManager;
    if-nez v3, :cond_4

    .line 2467
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v1, v8, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_3

    .line 2469
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2470
    .local v8, "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_6

    .line 2472
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2473
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2474
    if-gez v5, :cond_5

    goto :goto_2

    .line 2475
    :cond_5
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2477
    :cond_6
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v9, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2478
    .local v9, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v7, v9, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 2480
    .end local v8    # "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v9    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :goto_3
    return v6
.end method

.method runSetWatchHeap(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1037
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 1038
    .local v7, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method runStack(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "positiontask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "move-top-activity-to-pinned-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v7

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 2617
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    return v7

    .line 2615
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackRemove(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2613
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2611
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2609
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2607
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackPositionTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2605
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x407f3e65 -> :sswitch_5
        -0x37b5077c -> :sswitch_4
        0x3164ae -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x216122e -> :sswitch_1
        0x3ceed601 -> :sswitch_0
    .end sparse-switch
.end method

.method runStackInfo(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2702
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2703
    .local v1, "activityType":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 2704
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2705
    const/4 v3, 0x0

    return v3
.end method

.method runStackList(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2693
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 2694
    .local v0, "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 2695
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2696
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    goto :goto_0

    .line 2697
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method runStackMoveTask(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2661
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2662
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2663
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2664
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2665
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2667
    .local v4, "toTopStr":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2668
    const/4 v5, 0x1

    .local v5, "toTop":Z
    goto :goto_0

    .line 2669
    .end local v5    # "toTop":Z
    :cond_0
    const-string v5, "false"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2670
    const/4 v5, 0x0

    .line 2676
    .restart local v5    # "toTop":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityTaskManager;->moveTaskToStack(IIZ)V

    .line 2677
    const/4 v6, 0x0

    return v6

    .line 2672
    .end local v5    # "toTop":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: bad toTop arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    const/4 v5, -0x1

    return v5
.end method

.method runStackPositionTask(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2681
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2682
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2683
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2684
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2685
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2686
    .local v4, "positionStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2688
    .local v5, "position":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityTaskManager;->positionTaskInStack(III)V

    .line 2689
    const/4 v6, 0x0

    return v6
.end method

.method runStackRemove(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2709
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2710
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2711
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityTaskManager;->removeStack(I)V

    .line 2712
    const/4 v2, 0x0

    return v2
.end method

.method runStartActivity(Ljava/io/PrintWriter;)I
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 441
    const/4 v0, -0x2

    :try_start_0
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 444
    .local v15, "intent":Landroid/content/Intent;
    nop

    .line 446
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v14, -0x1

    const/4 v13, 0x1

    if-ne v0, v14, :cond_0

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    return v13

    .line 451
    :cond_0
    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 453
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 458
    :cond_1
    move-object v12, v0

    .end local v0    # "mimeType":Ljava/lang/String;
    .local v12, "mimeType":Ljava/lang/String;
    :goto_0
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    .line 460
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .local v0, "packageName":Ljava/lang/String;
    goto :goto_1

    .line 464
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 465
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 464
    const-string v9, "ActivityManagerShellCommand"

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, "userIdForQuery":I
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v15, v12, v11, v0}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 469
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_2

    .line 473
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_4

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    return v13

    .line 479
    :cond_4
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 481
    .end local v0    # "userIdForQuery":I
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v4, "packageName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 483
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v4, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 485
    const-wide/16 v5, 0xfa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    goto :goto_3

    .line 486
    :catch_0
    move-exception v0

    goto :goto_3

    .line 470
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v0    # "userIdForQuery":I
    .restart local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Intent does not match any activities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    return v13

    .line 490
    .end local v0    # "userIdForQuery":I
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 492
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 493
    :cond_7
    const/4 v3, 0x0

    .line 494
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 495
    const-string/jumbo v5, "w"

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 496
    if-nez v3, :cond_8

    .line 497
    return v13

    .line 500
    :cond_8
    new-instance v4, Landroid/app/ProfilerInfo;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v0, v4

    .line 504
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 506
    const/high16 v3, 0x10000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    const/16 v16, 0x0

    .line 510
    .local v16, "result":Landroid/app/WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 511
    .local v17, "startTime":J
    const/4 v3, 0x0

    .line 512
    .local v3, "options":Landroid/app/ActivityOptions;
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v4, v14, :cond_a

    .line 513
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 514
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 516
    :cond_a
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v4, :cond_c

    .line 517
    if-nez v3, :cond_b

    .line 518
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 520
    :cond_b
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 522
    :cond_c
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v4, :cond_e

    .line 523
    if-nez v3, :cond_d

    .line 524
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 526
    :cond_d
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 528
    :cond_e
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v4, v14, :cond_10

    .line 529
    if-nez v3, :cond_f

    .line 530
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 532
    :cond_f
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 534
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v4, :cond_10

    .line 535
    invoke-virtual {v3, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 538
    :cond_10
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v4, :cond_12

    .line 539
    if-nez v3, :cond_11

    .line 540
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 542
    :cond_11
    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    move-object/from16 v19, v3

    goto :goto_4

    .line 538
    :cond_12
    move-object/from16 v19, v3

    .line 544
    .end local v3    # "options":Landroid/app/ActivityOptions;
    .local v19, "options":Landroid/app/ActivityOptions;
    :goto_4
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    .line 545
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 547
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :cond_13
    move-object/from16 v21, v4

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 545
    const-string v22, "com.android.shell"

    move-object v4, v5

    move-object/from16 v5, v22

    move/from16 v22, v7

    move-object v7, v15

    move/from16 v23, v8

    move-object v8, v12

    move/from16 v24, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    .end local v12    # "mimeType":Ljava/lang/String;
    .local v20, "mimeType":Ljava/lang/String;
    move/from16 v12, v23

    move-object v13, v0

    move/from16 v23, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v21, "intent":Landroid/content/Intent;
    move/from16 v15, v22

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    .line 548
    .end local v16    # "result":Landroid/app/WaitResult;
    .local v3, "result":Landroid/app/WaitResult;
    iget v4, v3, Landroid/app/WaitResult;->result:I

    move-object/from16 v16, v3

    .local v4, "res":I
    goto :goto_5

    .line 550
    .end local v3    # "result":Landroid/app/WaitResult;
    .end local v4    # "res":I
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_14
    move/from16 v24, v11

    move-object/from16 v20, v12

    move/from16 v23, v14

    move-object/from16 v21, v15

    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v21    # "intent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 552
    if-eqz v19, :cond_15

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :cond_15
    move-object v14, v4

    iget v15, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 550
    const-string v7, "com.android.shell"

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v20

    move-object v13, v0

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v4

    .line 554
    .restart local v4    # "res":I
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 555
    .local v5, "endTime":J
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v3, :cond_16

    move-object v3, v2

    goto :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 556
    .local v3, "out":Ljava/io/PrintWriter;
    :goto_6
    const/4 v7, 0x0

    .line 557
    .local v7, "launched":Z
    const/16 v8, -0x62

    if-eq v4, v8, :cond_1d

    const/16 v8, -0x61

    if-eq v4, v8, :cond_1c

    if-eqz v4, :cond_1b

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1a

    const/4 v9, 0x2

    if-eq v4, v9, :cond_19

    const/4 v9, 0x3

    if-eq v4, v9, :cond_18

    const/16 v9, 0x64

    if-eq v4, v9, :cond_17

    packed-switch v4, :pswitch_data_0

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity not started, unknown error code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v10, v21

    goto/16 :goto_7

    .line 587
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity not started, unable to resolve "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 587
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    move-object/from16 v10, v21

    goto/16 :goto_7

    .line 592
    :pswitch_1
    const-string v9, "Error type 3"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 593
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    move-object/from16 v10, v21

    goto :goto_7

    .line 598
    :pswitch_2
    const-string v9, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    move-object/from16 v10, v21

    goto :goto_7

    .line 603
    :pswitch_3
    const-string v9, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    move-object/from16 v10, v21

    goto :goto_7

    .line 562
    :cond_17
    const/4 v7, 0x1

    .line 563
    const-string v9, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    move-object/from16 v10, v21

    goto :goto_7

    .line 568
    :cond_18
    const/4 v7, 0x1

    .line 569
    const-string v9, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    move-object/from16 v10, v21

    goto :goto_7

    .line 581
    :cond_19
    const/4 v7, 0x1

    .line 582
    const-string v9, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    move-object/from16 v10, v21

    goto :goto_7

    .line 575
    :cond_1a
    const/4 v7, 0x1

    .line 576
    const-string v9, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    move-object/from16 v10, v21

    goto :goto_7

    .line 559
    :cond_1b
    const/4 v8, 0x1

    const/4 v7, 0x1

    .line 560
    move-object/from16 v10, v21

    goto :goto_7

    .line 608
    :cond_1c
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v21

    .end local v21    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    goto :goto_7

    .line 613
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v21    # "intent":Landroid/content/Intent;
    :cond_1d
    move-object/from16 v10, v21

    const/4 v8, 0x1

    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v9, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    nop

    .line 622
    :goto_7
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 623
    iget-boolean v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v9, :cond_22

    if-eqz v7, :cond_22

    .line 624
    if-nez v16, :cond_1e

    .line 625
    new-instance v9, Landroid/app/WaitResult;

    invoke-direct {v9}, Landroid/app/WaitResult;-><init>()V

    .line 626
    .end local v16    # "result":Landroid/app/WaitResult;
    .local v9, "result":Landroid/app/WaitResult;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    iput-object v11, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_8

    .line 624
    .end local v9    # "result":Landroid/app/WaitResult;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_1e
    move-object/from16 v9, v16

    .line 628
    .end local v16    # "result":Landroid/app/WaitResult;
    .restart local v9    # "result":Landroid/app/WaitResult;
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v9, Landroid/app/WaitResult;->timeout:Z

    if-eqz v12, :cond_1f

    const-string/jumbo v12, "timeout"

    goto :goto_9

    :cond_1f
    const-string/jumbo v12, "ok"

    :goto_9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LaunchState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/app/WaitResult;->launchState:I

    invoke-static {v12}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    iget-object v11, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v11, :cond_20

    .line 631
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    :cond_20
    iget-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_21

    .line 634
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TotalTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    :cond_21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WaitTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v5, v17

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string v11, "Complete"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    move-object/from16 v16, v9

    .line 640
    .end local v9    # "result":Landroid/app/WaitResult;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_22
    iget v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    sub-int/2addr v9, v8

    iput v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 641
    if-lez v9, :cond_23

    .line 642
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v9}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    .line 644
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "res":I
    .end local v5    # "endTime":J
    .end local v7    # "launched":Z
    .end local v16    # "result":Landroid/app/WaitResult;
    .end local v17    # "startTime":J
    .end local v19    # "options":Landroid/app/ActivityOptions;
    :cond_23
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v0, :cond_24

    .line 645
    return v24

    .line 644
    :cond_24
    move v13, v8

    move-object v15, v10

    move-object/from16 v12, v20

    move/from16 v14, v23

    goto/16 :goto_0

    .line 442
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "mimeType":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 443
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch -0x5e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method runStartService(Ljava/io/PrintWriter;Z)I
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "asForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 652
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 656
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v10, -0x1

    if-ne v2, v10, :cond_0

    .line 657
    const-string v2, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return v10

    .line 660
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 662
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v7, "com.android.shell"

    move-object v4, v1

    move v6, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 664
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 665
    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    return v10

    .line 667
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    return v10

    .line 670
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Error: "

    if-eqz v3, :cond_3

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    return v10

    .line 673
    :cond_3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    return v10

    .line 677
    :cond_4
    const/4 v3, 0x0

    return v3

    .line 653
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStartUser(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    const/4 v0, 0x0

    .line 1866
    .local v0, "wait":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1867
    const-string v1, "-w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1868
    const/4 v0, 0x1

    goto :goto_0

    .line 1870
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1871
    const/4 v1, -0x1

    return v1

    .line 1874
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1876
    .local v1, "userId":I
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$1;)V

    move-object v3, v4

    .line 1877
    .local v3, "waiter":Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    .line 1878
    .local v4, "success":Z
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 1879
    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->waitForFinish(J)Z

    move-result v4

    .line 1882
    :cond_3
    if-eqz v4, :cond_4

    .line 1883
    const-string v5, "Success: user started"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1885
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: could not start user"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    :goto_1
    const/4 v5, 0x0

    return v5
.end method

.method runStopService(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 684
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 688
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 689
    const-string v2, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    return v3

    .line 692
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 694
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 695
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 696
    const-string v4, "Service not stopped: was not running."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    return v3

    .line 698
    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 699
    const-string v4, "Service stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    return v3

    .line 701
    :cond_2
    if-ne v2, v3, :cond_3

    .line 702
    const-string v4, "Error stopping service"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    return v3

    .line 705
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 685
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStopUser(Ljava/io/PrintWriter;)I
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1936
    const/4 v0, 0x0

    .line 1937
    .local v0, "wait":Z
    const/4 v1, 0x0

    .line 1939
    .local v1, "force":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_2

    .line 1940
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1941
    const/4 v0, 0x1

    goto :goto_0

    .line 1942
    :cond_0
    const-string v2, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1943
    const/4 v1, 0x1

    goto :goto_0

    .line 1945
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    return v4

    .line 1949
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1950
    .local v2, "user":I
    if-eqz v0, :cond_3

    new-instance v5, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>()V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 1952
    .local v5, "callback":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v2, v1, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v6

    .line 1953
    .local v6, "res":I
    if-eqz v6, :cond_8

    .line 1954
    const-string v7, ""

    .line 1955
    .local v7, "txt":Ljava/lang/String;
    const/4 v8, -0x4

    if-eq v6, v8, :cond_7

    const/4 v8, -0x3

    if-eq v6, v8, :cond_6

    const/4 v8, -0x2

    if-eq v6, v8, :cond_5

    if-eq v6, v4, :cond_4

    goto :goto_2

    .line 1960
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Unknown user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1961
    goto :goto_2

    .line 1957
    :cond_5
    const-string v7, " (Can\'t stop current user)"

    .line 1958
    goto :goto_2

    .line 1963
    :cond_6
    const-string v7, " (System user cannot be stopped)"

    .line 1964
    goto :goto_2

    .line 1966
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Can\'t stop user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " - one of its related users can\'t be stopped)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1970
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Switch failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    return v4

    .line 1972
    .end local v7    # "txt":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    .line 1973
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V

    .line 1975
    :cond_9
    const/4 v4, 0x0

    return v4
.end method

.method runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2903
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2904
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 2905
    const/4 v1, -0x1

    return v1

    .line 2907
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2908
    const/4 v1, 0x0

    return v1
.end method

.method runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2912
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2913
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 2914
    const/4 v1, -0x1

    return v1

    .line 2916
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2917
    const/4 v1, 0x0

    return v1
.end method

.method runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2394
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2395
    .local v0, "suppress":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->suppressResizeConfigChanges(Z)V

    .line 2396
    const/4 v1, 0x0

    return v1
.end method

.method runSwitchUser(Ljava/io/PrintWriter;)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1825
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result v1

    .line 1826
    .local v1, "userSwitchable":I
    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    return v2

    .line 1830
    :cond_0
    const/4 v3, 0x0

    .line 1832
    .local v3, "wait":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1833
    const-string v4, "-w"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1834
    const/4 v3, 0x1

    goto :goto_0

    .line 1836
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    return v2

    .line 1841
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1843
    .local v2, "userId":I
    if-eqz v3, :cond_3

    .line 1844
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->switchUserAndWaitForComplete(I)Z

    move-result v4

    .local v4, "switched":Z
    goto :goto_1

    .line 1846
    .end local v4    # "switched":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v4

    .line 1848
    .restart local v4    # "switched":Z
    :goto_1
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 1849
    return v6

    .line 1851
    :cond_4
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "Error: Failed to switch to user %d\n"

    invoke-virtual {p1, v6, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1852
    return v7
.end method

.method runTask(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2751
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2752
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2753
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2754
    :cond_0
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2755
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2756
    :cond_1
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2757
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2758
    :cond_2
    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2761
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    const/4 v1, -0x1

    return v1
.end method

.method runTaskFocus(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2873
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2874
    .local v0, "taskId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V

    .line 2876
    const/4 v1, 0x0

    return v1
.end method

.method runTaskLock(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2767
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2768
    .local v0, "taskIdStr":Ljava/lang/String;
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2769
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_0

    .line 2771
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2772
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V

    .line 2774
    .end local v1    # "taskId":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "not "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "in lockTaskMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    const/4 v1, 0x0

    return v1
.end method

.method runTaskResize(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2790
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2791
    .local v1, "taskId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2792
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2793
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    const/4 v3, -0x1

    return v3

    .line 2796
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    .line 2797
    return v3
.end method

.method runTaskResizeable(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2780
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2781
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2782
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2783
    .local v2, "resizeableStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2784
    .local v3, "resizeableMode":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityTaskManager;->setTaskResizeable(II)V

    .line 2785
    const/4 v4, 0x0

    return v4
.end method

.method runToUri(Ljava/io/PrintWriter;I)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1779
    const/4 v0, -0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1782
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1783
    invoke-virtual {v0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    const/4 v1, 0x0

    return v1

    .line 1780
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method runTraceIpc(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 780
    :cond_0
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown trace ipc command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    const/4 v1, -0x1

    return v1
.end method

.method runTraceIpcStart(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    const-string v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 791
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method runTraceIpcStop(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 798
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 799
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_1

    .line 800
    const-string v2, "--dump-file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 803
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    return v4

    .line 807
    :cond_1
    if-nez v1, :cond_2

    .line 808
    const-string v2, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    return v4

    .line 812
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 814
    const-string/jumbo v5, "w"

    invoke-virtual {p0, v1, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 815
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v5, :cond_3

    .line 816
    return v4

    .line 819
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v5}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 820
    const-string v6, "STOP TRACE FAILED."

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    return v4

    .line 824
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const/4 v4, 0x0

    return v4
.end method

.method runTrackAssociations(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1998
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runTrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2001
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_0

    .line 2002
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 2003
    const-string v1, "Association tracking started."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2005
    :cond_0
    const-string v1, "Association tracking already enabled."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2008
    const/4 v0, 0x0

    return v0

    .line 2007
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUnlockUser(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1900
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1901
    .local v1, "token":[B
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1902
    .local v2, "secret":[B
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v3

    .line 1903
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 1904
    const-string v4, "Success: user unlocked"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1906
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: could not unlock user"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method runUntrackAssociations(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runUntrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2015
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2016
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 2017
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2018
    const-string v1, "Association tracking stopped."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2020
    :cond_0
    const-string v1, "Association tracking not running."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2023
    return v2

    .line 2022
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2921
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2922
    .local v0, "userid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2923
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2925
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2926
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2928
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 2929
    const-string v2, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    const/4 v2, 0x0

    return v2
.end method

.method runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2943
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;)V

    .line 2944
    const/4 v0, 0x0

    return v0
.end method

.method runWatchUids(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1685
    const/4 v0, -0x1

    .line 1686
    .local v0, "uid":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1687
    const-string v1, "--oom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    const/4 v1, -0x1

    return v1

    .line 1696
    :cond_1
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v3, p1, v4, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V

    .line 1697
    .local v1, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    .line 1698
    const/4 v3, 0x0

    return v3
.end method

.method runWrite(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2880
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->flushRecentTasks()V

    .line 2883
    const-string v0, "All tasks persisted."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    const/4 v0, 0x0

    return v0
.end method

.method setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 2731
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x62

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x72

    if-eq v0, v1, :cond_2

    const/16 v1, 0x74

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v0, "t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "l"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown set side: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2742
    :cond_5
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2743
    goto :goto_2

    .line 2739
    :cond_6
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 2740
    goto :goto_2

    .line 2736
    :cond_7
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 2737
    goto :goto_2

    .line 2733
    :cond_8
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 2734
    nop

    .line 2748
    :goto_2
    return-void
.end method

.method taskResize(ILandroid/graphics/Rect;IZ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delay_ms"    # I
    .param p4, "pretendUserResize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    move v0, p4

    .line 2803
    .local v0, "resizeMode":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 2805
    int-to-long v1, p3

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    goto :goto_0

    .line 2806
    :catch_0
    move-exception v1

    .line 2808
    :goto_0
    return-void
.end method
