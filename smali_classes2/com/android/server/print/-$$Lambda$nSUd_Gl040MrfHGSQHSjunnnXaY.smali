.class public final synthetic Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;->INSTANCE:Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    return-void
.end method
