.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final NUM_EVENTS_TO_DUMP:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareLogging"


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field private final mLastEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 356
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    .line 70
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 71
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Exception;
    .param p4, "x4"    # [Ljava/lang/Object;

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logExceptionWithObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logVoidReturnWithObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # [Ljava/lang/Object;

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturnWithObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private appendMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 423
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;-><init>(Ljava/lang/String;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V

    .line 424
    .local v0, "event":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private varargs logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 121
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logExceptionWithObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method private logExceptionWithObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Exception;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 414
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 417
    invoke-static {p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 414
    const-string v1, "%s[this=%s, caller=%d/%d](%s) threw"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SoundTriggerMiddlewareLogging"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->appendMessage(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private varargs logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "retVal"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturnWithObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private logReturnWithObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "retVal"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 392
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 395
    invoke-static {p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 396
    invoke-static {p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 392
    const-string v1, "%s[this=%s, caller=%d/%d](%s) -> %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SoundTriggerMiddlewareLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->appendMessage(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private varargs logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logVoidReturnWithObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method private logVoidReturnWithObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 403
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 406
    invoke-static {p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 403
    const-string v1, "%s[this=%s, caller=%d/%d](%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SoundTriggerMiddlewareLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->appendMessage(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private static printArgs([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 371
    if-lez v1, :cond_0

    .line 372
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    aget-object v2, p0, v1

    invoke-static {v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 380
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;ZI)V

    .line 381
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This implementation is not inteded to be used directly with Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 8
    .param p1, "handle"    # I
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "attach"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p2, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V

    invoke-interface {v4, p1, v5}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v4

    .line 90
    .local v4, "result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    aput-object p2, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 91
    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;

    invoke-direct {v5, p0, v4, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 92
    .end local v4    # "result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 94
    throw v4
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 433
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 434
    const-string v0, "========================================="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    const-string v0, "Last events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    const-string v0, "========================================="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;

    .line 439
    .local v2, "event":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->timestamp:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 441
    iget-object v3, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    .end local v2    # "event":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
    goto :goto_0

    .line 443
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 446
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_1

    .line 447
    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 449
    :cond_1
    return-void

    .line 443
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v0, "listModules"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v2

    .line 77
    .local v2, "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object v2

    .line 79
    .end local v2    # "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 81
    throw v2
.end method

.method public setCaptureState(Z)V
    .locals 5
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const-string v0, "setCaptureState"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v3, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->setCaptureState(Z)V

    .line 102
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 105
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
