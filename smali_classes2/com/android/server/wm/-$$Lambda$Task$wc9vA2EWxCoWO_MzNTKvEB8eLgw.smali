.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/os/IBinder;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/Task;->lambda$wc9vA2EWxCoWO_MzNTKvEB8eLgw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p1

    return p1
.end method
