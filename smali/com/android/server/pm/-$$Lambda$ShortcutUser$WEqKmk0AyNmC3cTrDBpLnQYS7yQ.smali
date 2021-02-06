.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;->f$1:Lcom/android/server/pm/ShortcutUser;

    iput-boolean p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;->f$1:Lcom/android/server/pm/ShortcutUser;

    iget-boolean v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;->f$2:Z

    check-cast p1, Ljava/io/File;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$loadFromXml$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V

    return-void
.end method
