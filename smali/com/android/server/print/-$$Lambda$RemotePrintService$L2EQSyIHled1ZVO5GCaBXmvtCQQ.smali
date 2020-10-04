.class public final synthetic Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$L2EQSyIHled1ZVO5GCaBXmvtCQQ;

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

    invoke-static {p1, p2}, Lcom/android/server/print/RemotePrintService;->lambda$L2EQSyIHled1ZVO5GCaBXmvtCQQ(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method
