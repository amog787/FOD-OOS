.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$zn6ji6g70a_qrK5QZEPCaarZSik;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/SystemServer;->lambda$startOtherServices$5(Landroid/os/IBinder;)V

    return-void
.end method
