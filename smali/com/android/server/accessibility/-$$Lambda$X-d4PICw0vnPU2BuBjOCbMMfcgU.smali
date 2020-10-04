.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

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

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Ljava/util/function/IntSupplier;

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->clearAccessibilityFocus(Ljava/util/function/IntSupplier;)V

    return-void
.end method
