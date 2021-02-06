.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;

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

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method
