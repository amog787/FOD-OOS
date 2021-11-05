.class public final synthetic Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/parsing/PackageParser2;

.field public final synthetic f$1:Lcom/android/server/pm/parsing/PackageParser2$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;->f$0:Lcom/android/server/pm/parsing/PackageParser2;

    iput-object p2, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;->f$1:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    return-void
.end method


# virtual methods
.method public final isChangeEnabled(JLjava/lang/String;I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;->f$0:Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$Z1LNA-uFIqWWTxexnRn70YNNhRw;->f$1:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$1$PackageParser2(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method
