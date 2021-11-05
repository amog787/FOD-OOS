.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$6oHHz4Ki8lAtXH-ILvgmrwWRqNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$6oHHz4Ki8lAtXH-ILvgmrwWRqNM;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$6oHHz4Ki8lAtXH-ILvgmrwWRqNM;->f$0:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;->lambda$registerTaskOrganizer$0(ILcom/android/server/wm/Task;)V

    return-void
.end method
