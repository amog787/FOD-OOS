.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Landroid/os/RemoteCallbackList;

    check-cast p3, Ljava/util/HashSet;

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$gWIX-xPon63LM1keYTGNXBKdyeE(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;Ljava/util/HashSet;J)V

    return-void
.end method
