.class public final synthetic Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;->INSTANCE:Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    check-cast p2, Landroid/print/PrinterId;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method
