.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;

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

    check-cast p2, Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$luI_C3QiJWsM08i8m3lx484SyyY(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method
