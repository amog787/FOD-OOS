.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;

    invoke-direct {v0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;-><init>()V

    sput-object v0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;->INSTANCE:Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->lambda$destroySessions$1(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method
