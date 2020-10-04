.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field private final synthetic f$1:J

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-wide p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;->f$1:J

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-wide v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;->f$1:J

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4;->f$2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->lambda$handleUnlockUser$0$ShortcutService(JI)V

    return-void
.end method
