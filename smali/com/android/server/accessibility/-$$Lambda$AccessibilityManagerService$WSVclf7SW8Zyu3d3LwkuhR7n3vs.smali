.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;

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

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readComponentNamesFromStringLocked$5(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
