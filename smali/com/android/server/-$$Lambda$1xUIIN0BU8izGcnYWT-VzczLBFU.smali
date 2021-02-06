.class public final synthetic Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NsdService$DaemonConnectionSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;->INSTANCE:Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;
    .locals 1

    new-instance v0, Lcom/android/server/NsdService$DaemonConnection;

    invoke-direct {v0, p1}, Lcom/android/server/NsdService$DaemonConnection;-><init>(Lcom/android/server/NsdService$NativeCallbackReceiver;)V

    return-object v0
.end method
