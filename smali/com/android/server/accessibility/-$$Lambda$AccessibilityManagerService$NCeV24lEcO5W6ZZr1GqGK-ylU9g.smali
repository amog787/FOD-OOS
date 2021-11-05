.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;

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

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$NCeV24lEcO5W6ZZr1GqGK-ylU9g(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method
