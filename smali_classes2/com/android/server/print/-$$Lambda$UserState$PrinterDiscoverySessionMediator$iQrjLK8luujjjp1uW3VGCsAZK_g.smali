.class public final synthetic Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    check-cast p2, Lcom/android/server/print/RemotePrintService;

    check-cast p3, Landroid/print/PrinterId;

    invoke-static {p1, p2, p3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->lambda$iQrjLK8luujjjp1uW3VGCsAZK_g(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method
