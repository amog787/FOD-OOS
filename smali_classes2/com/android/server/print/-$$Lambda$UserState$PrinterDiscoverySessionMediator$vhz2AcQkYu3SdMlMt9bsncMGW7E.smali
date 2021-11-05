.class public final synthetic Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;

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

    check-cast p2, Landroid/print/IPrinterDiscoveryObserver;

    check-cast p3, Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->lambda$vhz2AcQkYu3SdMlMt9bsncMGW7E(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    return-void
.end method
