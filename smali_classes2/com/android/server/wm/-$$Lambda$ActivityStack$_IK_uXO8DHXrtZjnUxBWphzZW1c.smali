.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$_IK_uXO8DHXrtZjnUxBWphzZW1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_IK_uXO8DHXrtZjnUxBWphzZW1c;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_IK_uXO8DHXrtZjnUxBWphzZW1c;->f$0:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStack;->lambda$navigateUpTo$6(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
