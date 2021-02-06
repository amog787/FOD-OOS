.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$ITZvj4S56Qgg104SnVkH6QavKLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$ITZvj4S56Qgg104SnVkH6QavKLI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$ITZvj4S56Qgg104SnVkH6QavKLI;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->lambda$onPackageRemoved$2(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
