.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;

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

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readAccessibilityShortcutKeySettingLocked$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
