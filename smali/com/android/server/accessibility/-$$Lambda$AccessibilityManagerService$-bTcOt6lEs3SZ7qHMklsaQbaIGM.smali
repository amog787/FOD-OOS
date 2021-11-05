.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    iput-object p3, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v2, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;->f$3:Ljava/util/Set;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$16(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Landroid/content/ComponentName;)V

    return-void
.end method
