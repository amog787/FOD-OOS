.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;->f$2:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;->f$2:[I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$dumpWindowAnimators$17(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V

    return-void
.end method
