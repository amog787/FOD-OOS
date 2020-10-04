.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutService$3;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;->f$0:Lcom/android/server/pm/ShortcutService$3;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;->f$0:Lcom/android/server/pm/ShortcutService$3;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$3;->lambda$onUidGone$1$ShortcutService$3(I)V

    return-void
.end method
