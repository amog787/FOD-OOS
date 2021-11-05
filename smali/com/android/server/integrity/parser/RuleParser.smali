.class public interface abstract Lcom/android/server/integrity/parser/RuleParser;
.super Ljava/lang/Object;
.source "RuleParser.java"


# virtual methods
.method public abstract parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessObject;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation
.end method

.method public abstract parse([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation
.end method
