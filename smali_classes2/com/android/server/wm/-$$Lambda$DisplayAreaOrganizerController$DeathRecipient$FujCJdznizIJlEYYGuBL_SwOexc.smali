.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$DeathRecipient$FujCJdznizIJlEYYGuBL_SwOexc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$DeathRecipient$FujCJdznizIJlEYYGuBL_SwOexc;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$DeathRecipient$FujCJdznizIJlEYYGuBL_SwOexc;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->lambda$binderDied$0$DisplayAreaOrganizerController$DeathRecipient(Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method
