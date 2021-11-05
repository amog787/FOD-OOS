.class public final synthetic Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageCacher$m5SLKIgIcu0a0YKFji5p6LENHas;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->lambda$cleanCachedResult$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
