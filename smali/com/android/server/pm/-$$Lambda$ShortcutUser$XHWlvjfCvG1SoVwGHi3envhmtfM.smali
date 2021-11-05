.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;->f$0:I

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
