.class public final synthetic Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$uZx_s9KkC6FGFW4bkELnUYtB08A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$uZx_s9KkC6FGFW4bkELnUYtB08A;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$uZx_s9KkC6FGFW4bkELnUYtB08A;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$uZx_s9KkC6FGFW4bkELnUYtB08A;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/people/-$$Lambda$PeopleService$LocalService$uZx_s9KkC6FGFW4bkELnUYtB08A;->f$1:Landroid/content/pm/ParceledListSlice;

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/people/PeopleService$LocalService;->lambda$notifyLaunchLocationShown$1(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method
