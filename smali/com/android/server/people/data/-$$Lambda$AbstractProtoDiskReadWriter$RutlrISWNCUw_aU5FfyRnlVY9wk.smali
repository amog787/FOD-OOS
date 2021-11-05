.class public final synthetic Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$RutlrISWNCUw_aU5FfyRnlVY9wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$RutlrISWNCUw_aU5FfyRnlVY9wk;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$AbstractProtoDiskReadWriter$RutlrISWNCUw_aU5FfyRnlVY9wk;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->lambda$read$0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
