.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$2$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method
