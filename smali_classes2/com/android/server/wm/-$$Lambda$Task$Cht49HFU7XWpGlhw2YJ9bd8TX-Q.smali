.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;

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

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, [I

    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->lambda$getDescendantTaskCount$3(Lcom/android/server/wm/Task;[I)V

    return-void
.end method
