.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityButtonTargetsLocked$14(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
